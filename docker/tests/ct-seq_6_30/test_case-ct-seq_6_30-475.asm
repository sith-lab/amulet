.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
MUL word ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RAX], BL 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RDX], 65 
SBB AX, -99 
OR AX, 0b1000000000000000 # instrumentation
BSF SI, AX 
JMP .bb_main.1 
.bb_main.1:
ADD DIL, -118 # instrumentation
SBB SIL, -22 
AND RCX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RCX], 29 
JNP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RCX], -100 
AND RCX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RCX], SI 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RDI], -62 
AND RBX, 0b1111111111111 # instrumentation
IMUL byte ptr [R14 + RBX] 
ADD SIL, 39 # instrumentation
JP .bb_main.3 
JMP .bb_main.5 
.bb_main.3:
AND RBX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RBX], EBX 
CMC  
AND RDX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDX], 0b1000000000000000 # instrumentation
BSF CX, word ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNBE DX, word ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RSI], CL 
AND RSI, 0b1111111111111 # instrumentation
CMOVB EAX, dword ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
MOVSX DX, byte ptr [R14 + RBX] 
JLE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
ADD SIL, -16 # instrumentation
CMOVNZ DI, CX 
AND RCX, 0b1111111111111 # instrumentation
SBB ECX, dword ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RAX], DL 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RAX], DI 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RBX], 28 
JNS .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
CWDE  
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RSI], -67 
OR EAX, 0b1000000000000000000000000000000 # instrumentation
BSF ECX, EAX 
ADD SIL, 40 # instrumentation
ADC AL, 93 
AND RAX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RAX], AL 
INC RAX 
LEA SI, qword ptr [RCX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
