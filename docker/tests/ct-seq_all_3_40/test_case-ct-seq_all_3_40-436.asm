.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD BL, DL 
AND RAX, 0b1111111111111 # instrumentation
LOCK AND qword ptr [R14 + RAX], 105 
MOV BL, AL 
DEC EDI 
MUL AL 
AND RCX, 0b1111111111111 # instrumentation
CMOVNS EDI, dword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK NOT dword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RSI], DL 
OR RAX, -2055157448 
XOR AX, 36 
AND RSI, 0b1111111111111 # instrumentation
ADD DIL, byte ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RBX], 0b1000000000000000000000000000000 # instrumentation
BSR RSI, qword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RBX], -67 
LOOP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
AND byte ptr [R14 + RSI], 48 
IMUL AX 
MUL DL 
MOVSX EBX, DL 
MUL DI 
ADD DIL, 113 # instrumentation
CMOVNLE RSI, RCX 
AND RBX, 0b1111111111111 # instrumentation
LOCK CMPXCHG byte ptr [R14 + RBX], BL 
SUB EAX, -125 
AND RAX, 0b1111111111111 # instrumentation
XOR ECX, dword ptr [R14 + RAX] 
NOT AL 
MOV RDX, RSI 
AND RDX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDX], 1 # instrumentation
AND RBX, 0b1111111111111 # instrumentation
CMOVNO RBX, qword ptr [R14 + RBX] 
NEG DX 
AND RCX, 0b1111111111111 # instrumentation
CMOVB BX, word ptr [R14 + RCX] 
SUB ESI, 70 
AND RAX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RAX], -40 
INC AL 
JNLE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
CMOVO EBX, dword ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RCX] 
INC DL 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RDX], RSI 
XOR RBX, -51 
AND RDI, 1 
CMOVZ EAX, ESI 
XCHG SI, AX 
AND RDX, 0b1111111111111 # instrumentation
CMOVZ EAX, dword ptr [R14 + RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
