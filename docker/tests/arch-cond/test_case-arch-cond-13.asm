.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RAX] 
DEC DI 
ADC DIL, -117 
SETL BL 
DEC AL 
AND RBX, 0b1111111111111 # instrumentation
LOCK XOR word ptr [R14 + RBX], 100 
STC  
SUB AL, 108 
MOV ECX, EAX 
CMOVNLE SI, DX 
MUL CL 
ADD DIL, 46 # instrumentation
CMOVNZ RDX, RDX 
OR EAX, 1 # instrumentation
AND EDX, EAX # instrumentation
SHR EDX, 1 # instrumentation
DIV EAX 
ADD SIL, 124 # instrumentation
INC BL 
CMOVNB RDI, RBX 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RDI], AX 
AND EDI, -73 
AND RDI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSF RSI, qword ptr [R14 + RDI] 
TEST RAX, 1385140215 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
OR RCX, 0b1000000000000000000000000000000 # instrumentation
BSR RBX, RCX 
TEST EAX, 189788539 
MOVSX EDX, CX 
CMOVNB RSI, RCX 
SUB AX, 122 
AND RBX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RBX], -119 
MOV RBX, -7509707357824327701 
SUB RDX, RSI 
AND RBX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RBX], 31859 
AND RBX, 0b1111111111111 # instrumentation
CMP EDI, dword ptr [R14 + RBX] 
TEST CL, -74 
CMOVB AX, SI 
CMOVL RAX, RBX 
CMP EAX, -1628069841 
AND RDX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RDX] 
CMOVB SI, BX 
OR RCX, 0b1000000000000000000000000000000 # instrumentation
BSF RAX, RCX 
CMPXCHG CL, CL 
AND RCX, 0b1111111111111 # instrumentation
MOVSX EDX, word ptr [R14 + RCX] 
CMOVNB RDI, RDI 
MUL CX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
