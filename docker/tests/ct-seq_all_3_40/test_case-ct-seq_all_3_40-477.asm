.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
ADD RCX, qword ptr [R14 + RDI] 
XCHG RSI, RAX 
CLC  
AND RDI, 0b1111111111111 # instrumentation
IMUL ECX, dword ptr [R14 + RDI] 
MOV BL, CL 
TEST SIL, -86 
MOV DI, -9297 
CMPXCHG BL, CL 
MOVZX RDI, BX 
OR EDX, 0b1000000000000000000000000000000 # instrumentation
BSR EAX, EDX 
INC SIL 
SETNS AL 
AND RBX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK AND byte ptr [R14 + RDI], BL 
CMOVNBE SI, DI 
LOOPNE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
LOCK NOT byte ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
IMUL RCX, qword ptr [R14 + RDX] 
OR EAX, 0b1000000000000000000000000000000 # instrumentation
BSF ECX, EAX 
SAHF  
OR DI, 0b1000000000000000 # instrumentation
BSF DI, DI 
AND RCX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RCX], CL 
TEST RDI, 1272221190 
SETZ AL 
ADD CX, SI 
CMOVNZ ECX, EBX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNB EBX, dword ptr [R14 + RDX] 
DEC RAX 
SETO DIL 
AND RDI, 0b1111111111111 # instrumentation
CMOVP CX, word ptr [R14 + RDI] 
JZ .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
CMOVBE EAX, dword ptr [R14 + RSI] 
SUB CL, BL 
AND RAX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RAX], DIL 
AND RDI, 0b1111111111111 # instrumentation
ADC RSI, qword ptr [R14 + RDI] 
SBB AX, 31374 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RDX], 106 
CMOVP DX, SI 
CMOVZ SI, CX 
AND RAX, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RAX], BL 
XOR SI, SI 
CMP ESI, -42 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
