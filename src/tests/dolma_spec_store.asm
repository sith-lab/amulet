.intel_syntax noprefix
.test_case_enter:
LFENCE
# From spectre_v1_arch.asm

# TLB warmer
# MOV rax, qword ptr [r14] # Warm page 1
# MOV rax, qword ptr [r14 + 4096] # Warm page 2

# delay the cond. jump
MOV rax, r14
XOR rbx, rbx

MOV rbx, qword ptr [rax + rbx]
add rbx, 64
AND RBX, 0x3f0 # instrumentation
MOV rbx, qword ptr [rax + rbx]
add rbx, 64
AND RBX, 0x3f0 # instrumentation
MOV rbx, qword ptr [rax + rbx]
add rbx, 64
AND RBX, 0x3f0 # instrumentation
MOV rbx, qword ptr [rax + rbx]
add rbx, 64
AND RBX, 0x3f0 # instrumentation
MOV rbx, qword ptr [rax + rbx]

# reduce the entropy in rbx
AND rbx, 0b1000000
# rbx will definitely be zero now!
AND rbx, 0b0100000

CMP rbx, 0
JE .l1  # misprediction
.l0:
    # rbx != 0
    MOV rax, qword ptr [r14 + 1216]
    AND rax, 0x7ffff # instrumentation
    # MOV rax, qword ptr [r14 + rax + 0x980] # load: leakage happens here
    MOV qword ptr [r14 + rax + 0x980], 0 # store: leakage happens here
.l1:
.test_case_exit:
