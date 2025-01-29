.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RSI], SI 
SETNP AL 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RBX], 105 
INC SI 
AND RAX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RAX], RDX 
TEST EAX, 1050314506 
NOP  
AND RDI, 0b1111111111111 # instrumentation
ADC ESI, dword ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
INC byte ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RBX], 1 # instrumentation
MOV AX, 1 # instrumentation
DIV byte ptr [R14 + RBX] 
DEC ESI 
AND RDX, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNZ ESI, dword ptr [R14 + RCX] 
ADD AL, DIL 
CMPXCHG AL, DL 
AND RDX, 0b1111111111111 # instrumentation
CMOVNL RBX, qword ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
AND qword ptr [R14 + RCX], RCX 
JNZ .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD DIL, 59 # instrumentation
ADC DX, -114 
AND RSI, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RSI], DI 
XOR RBX, RDX 
OR DL, 1 # instrumentation
AND RDX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDX], 0b1000000000000000000000000000000 # instrumentation
BSF EDI, dword ptr [R14 + RDX] 
NOT RAX 
AND RCX, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RCX] 
SETNP DL 
CMOVLE SI, BX 
CMOVNZ RDX, RDI 
SETB AL 
JB .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
CLD  # instrumentation
AND RAX, 0b1111111111111 # instrumentation
CMOVNLE RAX, qword ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
XOR word ptr [R14 + RCX], AX 
XADD BL, DIL 
AND RCX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RCX], 0b1000000000000000000000000000000 # instrumentation
BSF ESI, dword ptr [R14 + RCX] 
SUB BL, DL 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
SCASW  
CMOVZ ESI, EDX 
AND RSI, 0b1111111111111 # instrumentation
MOVZX ECX, word ptr [R14 + RSI] 
TEST DIL, 40 
MUL AX 
ADD SIL, -88 # instrumentation
SETL BL 
SETNL AL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
