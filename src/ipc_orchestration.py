from config import CONF
from interfaces import TestCase, Input
import subprocess
import struct
import socket
import selectors
import os
import time
import re
from typing import List

OP_INIT = 0xd09e95bc2c73ad66
OP_ACK_INIT = 0xc4f991d25774a0ac
OP_LOAD_TEST_CASE = 0xf06e27858611c27a
OP_ACK_TEST_CASE = 0x847431e37076fb26
OP_TRACE_TEST_CASE = 0x9ca711a73355bea
OP_ACK_TRACE_TEST_CASE = 0xc1f8bc29862ef946
OP_RESET_LOG = 0x7e310c4276780c9b
OP_GET_BRANCH_PREDICTOR_STATE = 0x98df1da695dd7afe
OP_ACK_BRANCH_PREDICTOR_STATE = 0x7d5cc0725ba80cf4
OP_RESET_BRANCH_PREDICTOR = 0xcd0b48f441b827af
OP_ENABLE_BRANCH_PREDICTION_LOG = 0x3604820624f5dd0a
OP_GET_BRANCH_PREDICTION_LOG = 0xa0ce930078391e8d
OP_ACK_BRANCH_PREDICTION_LOG = 0xfccf2948b05f1841
OP_ENABLE_ACCESS_LOG = 0x705c94b0572c79e2
OP_GET_ACCESS_LOG = 0x6cedeb82908d6957
OP_ACK_ACCESS_LOG = 0xa0e9b9ce1b96279d


CODE_ADDR_START = 0x402000
CODE_ADDR_END   = 0x402200

# simple hash function that we implement also on the gem5 side to make sure everything's getting sent correctly
def hash_bytes(bytes_):
    h = 0xbb7524eafb93804b
    for byte in bytes_:
        h += byte
        h *= 0x21f782547ea34f3d
        h &= 0xffff_ffff_ffff_ffff
    return h

def hash_input(input_: Input):
    # Slows down run too much for larger sandbox sizes, only run for <=32kB
    if CONF.input_main_region_size <= 32768:
        bytes_ = input_[:input_.data_size].tobytes()
        return hash_bytes(bytes_)
    else:
        return 0
    

class Gem5Crash(ConnectionError): pass

class Gem5IPCOrchestration:
    def __init__(self):
        assert CONF.gem5_ipc_parallelism > 0, 'must set CONF.gem5_ipc_parallelism to a positive value'
        if CONF.analysis_run:
            CONF.set('gem5_ipc_parallelism', 1)
            if CONF.verbose:
                print("Overriding gem5 parallelism to 1 for analysis run")
        if CONF.verbose:
            print("gem5 parallelism: ", str(CONF.gem5_ipc_parallelism))
        self.processes = {}
        self.active_process = 0
        self.last_case = None
        self.socket_number = 0
        self.sockets = {}
        assert CONF.input_assist_region_size and CONF.enable_assist_page, \
            'IPC requires assist region (for consistency between model and executor for accesses going beyond end of sandbox due to randomized_mem_alignment)'

    def send(self, data):
        self.conn.sendall(data)

    def recv(self, count):
        time_spent = 0
        data = bytearray()
        while time_spent < 120:
            if self.conn_selector.select(timeout = 1):
                buf = self.conn.recv(count)
                if len(buf) == 0:
                    raise Gem5Crash('gem5 exited unexpectedly')
                data.extend(buf)
                count -= len(buf)
                if count == 0:
                    return bytes(data)
            else:
                time_spent += 1
        raise Gem5Crash('gem5 in deadlock?')

    def start_new_gem5_process(self, cmd: List[str]):
        assert not (CONF.analysis_run and CONF.gem5_ipc_parallelism > 1), \
            'analysis run cannot run multiple gem5 processes simultaneously'
        if CONF.gem5_ipc_show_output:
            stdout = None
            stderr = None
        else:
            stdout = subprocess.PIPE
            stderr = subprocess.STDOUT
        # We can't just generate a random name since currently calling random
        # messes up the input boosting (this is a bug which will hopefully be fixed eventually)
        socket_name = f'revizor-gem5-{CONF.process_run}-{self.socket_number}-{time.time():.9f}'
        self.socket_number += 1
        sock = socket.socket(socket.AF_UNIX)
        sock.bind(b'\0' + socket_name.encode())
        sock.listen(CONF.gem5_ipc_parallelism + 1)
        cmd = cmd.copy()
        cmd[cmd.index('SOCKET')] = socket_name
        process = subprocess.Popen(cmd, stdout=stdout, stderr=stderr)
        if CONF.verbose:
            print('started gem5 process', process.pid)
        self.processes[process.pid] = process
        self.sockets[process.pid] = sock

    def restart_gem5(self, cmd: List[str]):
        ''' start or restart gem5 process with command cmd '''
        # print('restart gem5:', cmd) # Debug
        if self.active_process:
            # kill previous active gem5 process
            self.processes[self.active_process].kill()
            # clean up zombie process
            self.processes[self.active_process].wait()
            self.processes.pop(self.active_process)
            self.sockets[self.active_process].close()
            self.sockets.pop(self.active_process)
            self.active_process = 0
        while len(self.processes) < CONF.gem5_ipc_parallelism:
            self.start_new_gem5_process(cmd)
        
        # select first socket which can be read
        # (i.e. first gem5 process which connected to its socket)
        selector = selectors.DefaultSelector()
        for socket in self.sockets.values():
            selector.register(socket, selectors.EVENT_READ)
        socket = selector.select()[0][0].fileobj

        self.conn, _ = socket.accept()
        self.conn_selector = selectors.DefaultSelector()
        self.conn_selector.register(self.conn, selectors.EVENT_READ)
        self.send(struct.pack('Q', OP_INIT))
        (op, pid) = struct.unpack('QQ', self.recv(16))
        if op != OP_ACK_INIT:
            raise ValueError(f'expected OP_ACK_INIT from gem5, got {op:016x}')
        assert pid in self.processes
        if CONF.verbose:
            print('connected to gem5 process', pid)
        self.active_process = pid
        if self.last_case:
            self.load_test_case(self.last_case)

    def load_test_case(self, test_case: TestCase):
        self.last_case = test_case
        if not self.active_process: return
        with open(test_case.bin_path, 'rb') as f:
            case = f.read()
        if CONF.verbose:
            print('sending test case {:016x} to gem5'.format(hash_bytes(case)))
        self.send(struct.pack('QQ', OP_LOAD_TEST_CASE, len(case)) + case)
        if CONF.verbose:
            print('waiting for test case acknowledgement...')
        (op, h) = struct.unpack('QQ', self.recv(16))
        if op != OP_ACK_TEST_CASE:
            raise ValueError(f'expected OP_ACK_TEST_CASE from gem5, got {op:016x}.')
        if h != hash_bytes(case):
            raise ValueError('test case not received correctly.')
        if CONF.verbose:
            print('received acknowledgement for test case {:016x}'.format(h))

    def trace_test_case(self, input_: Input, id_: int, sources: List[str]) -> str:
        src_bp_state = "branch_pred_state" in sources
        src_predictions = "branch_predictions" in sources
        src_predictions_timing = "branch_predictions_timing" in sources
        src_access_timing = "access_timing" in sources
        src_access_order = "access_order" in sources
        if src_bp_state or src_predictions or src_predictions_timing:
            self.send(struct.pack('Q', OP_RESET_BRANCH_PREDICTOR))
        if src_predictions or src_predictions_timing:
            self.send(struct.pack('Q', OP_ENABLE_BRANCH_PREDICTION_LOG))
        if src_access_timing or src_access_order:
            self.send(struct.pack('Q', OP_ENABLE_ACCESS_LOG))
            
        # For now we disable input checking because we are using very large inputs
        # and it's slowing things down.
        input_hash = hash_input(input_)
        bytes_ = input_[:input_.data_size].tobytes()
        # ### Debug ###
        # print(f'run with input {input_} | {input_.data_size} | {input_hash:016x}')
        # ### Debug ###
        metadata = struct.pack('QQQQ', OP_TRACE_TEST_CASE, len(bytes_),
                input_.register_start * 8, input_hash)
        if CONF.verbose:
            print('sending input {:016x} to gem5'.format(input_hash))
        self.send(metadata + bytes_)
        if CONF.verbose:
            print('waiting for input acknowledgement...')
        op, input_hash_confirm, tags_len = struct.unpack('QQQ', self.recv(24))
        if op != OP_ACK_TRACE_TEST_CASE:
            raise ValueError(f'expected OP_ACK_TRACE_TEST_CASE from gem5, got {op:016x}')
        if input_hash_confirm != input_hash:
            raise ValueError(f'expected confirmation of input hash {input_hash:016x}, got {input_hash_confirm:016x}')
        trace = self.recv(tags_len).decode()
        if CONF.verbose:
            print('received acknowledgement for input {:016x}'.format(input_hash_confirm))
        if src_bp_state:
            self.send(struct.pack('Q', OP_GET_BRANCH_PREDICTOR_STATE))
            op, state_len = struct.unpack('QQ', self.recv(16))
            if op != OP_ACK_BRANCH_PREDICTOR_STATE:
                raise ValueError(f'expected OP_ACK_BRANCH_PREDICTOR_STATE from gem5, got {op:016x}')
            trace += '\n' + self.recv(state_len).decode() + '\n'
        if src_predictions or src_predictions_timing:
            self.send(struct.pack('Q', OP_GET_BRANCH_PREDICTION_LOG))
            op, length = struct.unpack('QQ', self.recv(16))
            if op != OP_ACK_BRANCH_PREDICTION_LOG:
                raise ValueError(f'expected OP_ACK_BRANCH_PREDICTION_LOG from gem5, got {op:016x}')
            log = self.recv(length).decode()
            filtered_log = []
            pc_pattern = re.compile('pc:(0x[0-9a-f]+)')
            for entry in log.split(';'):
                if not entry: continue
                pc = int(pc_pattern.search(entry).group(1), 0)
                if not src_predictions_timing:
                    # remove timing information
                    assert entry.startswith('tick:')
                    entry = entry[entry.index(','):]
                if CODE_ADDR_START <= pc < CODE_ADDR_END:
                    filtered_log.append(entry)

            trace += '\n[branchPredictionLog]\nlog = ' + ';'.join(filtered_log) + '\n'
        if src_access_order or src_access_timing:
            self.send(struct.pack('Q', OP_GET_ACCESS_LOG))
            op, length = struct.unpack('QQ', self.recv(16))
            if op != OP_ACK_ACCESS_LOG:
                raise ValueError(f'expected OP_ACK_ACCESS_LOG from gem5, got {op:016x}')
            log = self.recv(length).decode()
            filtered_log = []
            pc_pattern = re.compile('pc:(0x[0-9a-f]+)')
            for entry in log.split(';'):
                if not entry: continue
                pc = int(pc_pattern.search(entry).group(1), 0)
                if not src_access_timing:
                    # remove timing information
                    assert entry.startswith('tick:')
                    entry = entry[entry.index(','):]
                if CODE_ADDR_START <= pc < CODE_ADDR_END:
                    filtered_log.append(entry)
            trace += '\n[accessLog]\nlog = ' + ';'.join(filtered_log) + '\n'

        return trace

    def get_gem5_output(self):
        ''' get output of gem5 process '''
        if CONF.gem5_ipc_show_output: return ''
        lines = []
        while True:
            line = self.processes[self.active_process].stdout.readline()
            if line == b'--- RESET ---\n':
                break
            lines.append(line)
        output = b''.join(lines).decode()
        return output

    def reset_log(self):
        self.send(struct.pack('Q', OP_RESET_LOG))

    def __del__(self):
        if hasattr(self, 'processes') and self.processes:
            for process in self.processes.values():
                process.kill()
                # clean up zombie process
                process.wait()
        if hasattr(self, 'sockets') and self.sockets:
            for socket in self.sockets.values():
                socket.close()
