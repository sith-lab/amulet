.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
OR BL, CL 
CMPXCHG BL, DL 
SBB DL, CL 
XOR EDI, ESI 
TEST RAX, -1886332700 
CMPXCHG RDX, RDI 
SETNS SIL 
SBB BX, DX 
JNL .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
ADD RAX, -170528385 
AND RDI, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RDI], CL 
AND RDI, 0b1111111111111 # instrumentation
OR SIL, byte ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
XADD byte ptr [R14 + RSI], DL 
SETO BL 
CMOVNB ECX, EAX 
XADD SI, AX 
MUL EBX 
AND RSI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RSI], EAX 
CMOVB EDX, EDI 
SETNS BL 
ADD AX, -25589 
JS .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
MOVZX AX, CL 
SUB RSI, RBX 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RBX], AL 
NEG RBX 
AND RBX, 0b1111111111111 # instrumentation
CMOVO CX, word ptr [R14 + RBX] 
INC EAX 
OR AX, -19493 
JNS .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
ADD SIL, -73 # instrumentation
CMOVO RAX, RAX 
MOVZX DX, BL 
CMOVNS BX, CX 
OR DI, 123 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RSI], RAX 
SUB AX, 31036 
AND RDI, 0b1111111111111 # instrumentation
LOCK INC dword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
AND RDX, qword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
SBB RDI, qword ptr [R14 + RBX] 
NEG AL 
AND RBX, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RBX], 1726370522 
XCHG RDX, RSI 
MOVSX CX, CL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
