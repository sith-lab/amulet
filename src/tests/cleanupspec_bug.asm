.intel_syntax noprefix
.test_case_enter:
MOV rax, qword ptr [r14 + 64]
MOV rax, qword ptr [r14 + 128]
MOV rax, qword ptr [r14 + 192]
LFENCE
AND rax, 0b01111100000000
# delay the cond. jump
LEA rbx, qword ptr [rbx + rax + 1]
LEA rbx, qword ptr [rbx + rax + 1]
LEA rbx, qword ptr [rbx + rax + 1]
LEA rbx, qword ptr [rbx + rax + 1]
LEA rbx, qword ptr [rbx + rax + 1]
LEA rbx, qword ptr [rbx + rax + 1]
LEA rbx, qword ptr [rbx + rax + 1]
LEA rbx, qword ptr [rbx + rax + 1]
LEA rbx, qword ptr [rbx + rax + 1]
LEA rbx, qword ptr [rbx + rax + 1]

# reduce the entropy in rbx
AND rbx, 0b1000000

CMP rbx, 0
JE .l1  # misprediction
.l0:
    # rbx == 0
    CMP rax, 1
    JE .il2
    .il0:
        MOV rax, qword ptr [r14 + 64]
        MOV rax, qword ptr [r14 + 128]
        MOV rax, qword ptr [r14 + 192]
    .il1:
        MOV rax, qword ptr [r14 + 448]
        MOV rax, qword ptr [r14 + 320]
        MOV rax, qword ptr [r14 + 256]
    .il2:
        JMP .l2
.l1:
    #rbx == 0
    MOV rax, qword ptr [r14 + 192]
.l2:
    MOV rax, qword ptr [r14 + 64]
    CLFLUSH qword ptr [r14 + 448]
    CLFLUSH qword ptr [r14 + 320]
    CLFLUSH qword ptr [r14 + 256]
    LFENCE
    MOV qword ptr [r14 + 10000], rax
MFENCE
