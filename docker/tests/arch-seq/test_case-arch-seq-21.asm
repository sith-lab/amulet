.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, -28 # instrumentation
SETNO AL 
SUB BL, 66 
JNS .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
AND DI, 7 
MUL DI 
INC RSI 
SUB SIL, 16 
AND RSI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RSI], SI 
CMOVNZ EDI, EBX 
MOVSX EDI, BL 
AND RDI, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RDI], 48 
AND RDI, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RDI], EAX 
ADD RAX, -544942432 
DEC RCX 
JMP .bb_main.2 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RBX], 0b1000000000000000000000000000000 # instrumentation
BSF EDX, dword ptr [R14 + RBX] 
ADD DIL, -67 # instrumentation
XCHG CX, AX 
CMOVNS EDI, EBX 
MUL AX 
MOVSX SI, AL 
SBB AL, AL 
MUL BX 
TEST RAX, 777378313 
JNZ .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
XOR SI, -80 
CMOVNBE RDI, RAX 
SUB AL, DL 
CMOVNO RAX, RCX 
AND RBX, 0b1111111111111 # instrumentation
LOCK CMPXCHG dword ptr [R14 + RBX], EAX 
JNS .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RCX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RCX], 74 
XOR AL, 118 
AND RBX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RBX], AL 
CMP DI, CX 
ADD AL, 22 
JNLE .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RDI], 101 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RDX], -98 
IMUL AL 
ADC SI, DX 
OR RAX, 122547257 
AND RDI, 0b1111111111111 # instrumentation
MOVSX RAX, word ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
ADD RDI, qword ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RSI], -30 
ADC RBX, RDX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
