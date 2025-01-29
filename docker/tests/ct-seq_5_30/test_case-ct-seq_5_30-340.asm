.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
CMOVNBE RAX, qword ptr [R14 + RCX] 
CMC  
AND RDX, 0b1111111111111 # instrumentation
CMOVNO EAX, dword ptr [R14 + RDX] 
SUB RDI, RDI 
AND RDX, 0b1111111111111 # instrumentation
LOCK INC word ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RCX], RSI 
JMP .bb_main.1 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RSI], EDI 
SUB EDI, ECX 
MOV DIL, CL 
JMP .bb_main.2 
.bb_main.2:
DEC ESI 
AND RAX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RAX], -19 
AND RAX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RAX], 66 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RCX], 17 
AND RCX, 0b1111111111111 # instrumentation
SBB AX, word ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RBX], AL 
AND RBX, 0b1111111111111 # instrumentation
MUL qword ptr [R14 + RBX] 
MOV DIL, DL 
JMP .bb_main.3 
.bb_main.3:
MUL EDI 
AND RAX, 0b1111111111111 # instrumentation
CMOVBE EDI, dword ptr [R14 + RAX] 
CMOVNBE RDI, RDX 
CMP CL, SIL 
AND RBX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RBX], 0b1000000000000000 # instrumentation
BSF DI, word ptr [R14 + RBX] 
CMP AX, DX 
JNP .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
ADD DIL, 14 # instrumentation
CMOVB DI, DX 
INC DL 
SUB ESI, EBX 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RSI], 10 
AND RSI, 0b1111111111111 # instrumentation
CMOVNS DX, word ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
CMOVO EAX, dword ptr [R14 + RBX] 
ADD SI, DX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
