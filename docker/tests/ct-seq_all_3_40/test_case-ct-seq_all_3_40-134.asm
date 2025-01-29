.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
ADD EAX, dword ptr [R14 + RCX] 
CMOVP RCX, RCX 
CMOVL RCX, RDX 
AND AX, AX 
AND RDI, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RDI], AL 
AND RDI, RDX 
OR AL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV AL 
AND RBX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RBX], ESI 
AND RBX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RBX], ECX 
AND RBX, RDI 
CMOVP DX, DI 
LOOPE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDX], DX 
ADD BL, DL 
AND RCX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RCX], RAX 
XOR RBX, RDI 
SETNO DL 
CMOVS EBX, ECX 
AND DI, CX 
XCHG AX, AX 
AND RAX, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
XOR RAX, qword ptr [R14 + RBX] 
MOV DL, CL 
CMP AL, -110 
ADC SIL, -32 
SUB RAX, 2014838317 
AND RBX, 0b1111111111111 # instrumentation
CMOVNBE RSI, qword ptr [R14 + RBX] 
CMC  
AND RDI, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RDI], SIL 
AND RDX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDX], 8 
SETNLE CL 
JNO .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
CLD  # instrumentation
DEC DL 
TEST AL, 43 
CLC  
AND RAX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RAX], EDX 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
MOVSB  
AND RAX, 0b1111111111111 # instrumentation
XOR word ptr [R14 + RAX], -95 
SBB BX, 79 
AND RBX, 0b1111111111111 # instrumentation
CMOVO EDX, dword ptr [R14 + RBX] 
CMOVP EBX, EAX 
AND RAX, 0b1111111111111 # instrumentation
CMOVL RCX, qword ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
