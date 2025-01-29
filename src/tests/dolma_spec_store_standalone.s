.intel_syntax noprefix
.data
.balign 4096

.equiv SECRET, 1

sandbox:
    .fill 1216
    .byte 0
    .byte ((SECRET + 1) << 4)
    .fill 100000

.text

.global _start
_start:
    lea r14, sandbox

.test_case_enter:
LFENCE
# From spectre_v1_arch.asm
MOV rcx, 5218

# TLB warmer
# MOV rax, qword ptr [r14] # Warm page 1
# MOV rax, qword ptr [r14 + 4096] # Warm page 2

# delay the cond. jump
MOV rax, r14
XOR rbx, rbx

MOV rbx, qword ptr [rax + rbx]
ADD RBX, 64
AND RBX, 0b11111100000 # instrumentation
MOV rbx, qword ptr [rax + rbx]
ADD RBX, 64
AND RBX, 0b11111100000 # instrumentation
MOV rbx, qword ptr [rax + rbx]
ADD RBX, 64
AND RBX, 0b11111100000 # instrumentation
MOV rbx, qword ptr [rax + rbx]
ADD RBX, 64
AND RBX, 0b11111100000 # instrumentation
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
    AND rax, 0x3fff
    # MOV rax, qword ptr [r14 + rax + 0x980] # load: leakage happens here
    MOV qword ptr [r14 + rax + 0x980], 0 # store: leakage happens here
.l1:

.test_case_exit:
MFENCE
mov rax, 0x3c
mov rbx, 0
syscall
