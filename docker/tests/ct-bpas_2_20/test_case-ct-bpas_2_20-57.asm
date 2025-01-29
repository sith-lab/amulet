.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
IMUL RBX, RBX, -64 
AND RAX, 0b1111111111111 # instrumentation
CMOVNP RDX, qword ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RAX], -113 
AND RSI, 0b1111111111111 # instrumentation
CMOVNZ AX, word ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
LOCK NEG dword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVP CX, word ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RDI], -79 
JS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RBX], 0b1000000000000000 # instrumentation
BSR AX, word ptr [R14 + RBX] 
INC DL 
AND RDX, 0b1111111111111 # instrumentation
CMOVNZ RAX, qword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVL RBX, qword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RDI], AL 
CMOVO SI, DI 
STD  
AND RBX, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RDX], DI 
AND RCX, 0b1111111111111 # instrumentation
INC dword ptr [R14 + RCX] 
ADD BL, BL 
SUB DL, AL 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RDI], DI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
