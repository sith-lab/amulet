.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
ADD DIL, -45 # instrumentation
ADC RSI, RDX 
AND RSI, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RSI], 39 
INC ECX 
AND RAX, 0b1111111111111 # instrumentation
DEC word ptr [R14 + RAX] 
ADC BL, BL 
AND RCX, 0b1111111111111 # instrumentation
DEC word ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
CMPSD  
AND RBX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RBX], -16 
MOVSX CX, DIL 
ADC SIL, 120 
ADD RCX, RBX 
AND RBX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RBX], 0b1000000000000000 # instrumentation
BSF DI, word ptr [R14 + RBX] 
CMP ECX, 59 
AND RDI, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RDI], AL 
JLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
XCHG DX, AX 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RSI], CX 
AND RSI, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RSI], 77 
AND RDI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDI], 1575128811 
AND RCX, 0b1111111111111 # instrumentation
CMOVL ESI, dword ptr [R14 + RCX] 
ADC RAX, -999182602 
CMOVL DX, SI 
AND RBX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RBX], 59 
AND RCX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RCX], EAX 
AND RBX, 0b1111111111111 # instrumentation
CMOVNO DX, word ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
MOV DL, byte ptr [R14 + RDI] 
CMOVNZ ESI, ECX 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RBX], RAX 
SBB EBX, -108 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RDX], 53 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
