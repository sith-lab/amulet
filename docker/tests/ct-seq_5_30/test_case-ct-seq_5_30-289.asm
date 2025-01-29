.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RAX], 1 # instrumentation
AND DX, word ptr [R14 + RAX] # instrumentation
SHR DX, 1 # instrumentation
DIV word ptr [R14 + RAX] 
ADD SIL, 93 # instrumentation
ADC CL, AL 
AND RCX, 0b1111111111111 # instrumentation
ADD CX, word ptr [R14 + RCX] 
CMOVNB EBX, EDI 
AND RBX, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RBX], RDX 
JNZ .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
DEC BL 
LEA RSI, qword ptr [RDX + RAX] 
AND RDX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDX], EAX 
AND RDI, 0b1111111111111 # instrumentation
IMUL word ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
MOVSX RDI, word ptr [R14 + RAX] 
STC  
CMOVNP ESI, ECX 
MOVZX EBX, CL 
AND RSI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RSI], BL 
JNO .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
ADD DIL, -123 # instrumentation
CMOVZ AX, AX 
AND RBX, 0b1111111111111 # instrumentation
INC dword ptr [R14 + RBX] 
CBW  
MOV BL, 25 
JNP .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
MUL ECX 
MOVSX RAX, DX 
SUB AX, 17825 
AND RDX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDX], 0b1000000000000000 # instrumentation
BSR DI, word ptr [R14 + RDX] 
ADD SIL, -49 # instrumentation
CMOVL RBX, RBX 
IMUL DL 
MOV ESI, EDX 
AND RAX, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RAX] 
JNP .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
SUB AX, 9650 
AND RBX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RBX], -86 
AND RCX, 0b1111111111111 # instrumentation
MOV RSI, qword ptr [R14 + RCX] 
CMOVL RDX, RBX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
