.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
NOT dword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
MOVZX EDX, byte ptr [R14 + RAX] 
CMOVB RAX, RSI 
TEST DX, 7828 
ADD BL, -70 
SETNL AL 
AND RAX, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RCX], -107 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RSI], DI 
ADC DL, 6 
OR ESI, 0b1000000000000000000000000000000 # instrumentation
BSR EBX, ESI 
TEST RBX, -1711409835 
AND RDX, 0b1111111111111 # instrumentation
XOR SI, word ptr [R14 + RDX] 
OR SI, 1 # instrumentation
AND DX, SI # instrumentation
SHR DX, 1 # instrumentation
DIV SI 
AND RDI, 0b1111111111111 # instrumentation
CMOVNS AX, word ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RSI], 19 
JS .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
XOR DIL, 62 
MOVSX ESI, BL 
NEG SIL 
AND RAX, 0b1111111111111 # instrumentation
CMPXCHG word ptr [R14 + RAX], SI 
MOV DL, 15 
CWDE  
CMOVP RCX, RDI 
AND RBX, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RBX], 1069830816 
SETS DL 
MOVSX RBX, SIL 
AND RCX, 0b1111111111111 # instrumentation
INC word ptr [R14 + RCX] 
CMOVNB DI, CX 
NEG BL 
XCHG ESI, EAX 
JBE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
ADD DIL, 112 # instrumentation
ADC AX, 11179 
AND RDX, 0b1111111111111 # instrumentation
AND qword ptr [R14 + RDX], 39 
SUB CX, DI 
MOV AL, DIL 
AND RSI, 0b1111111111111 # instrumentation
CMOVNB SI, word ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDI], SI 
CMOVNZ AX, DX 
SETP DL 
AND RBX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RBX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
