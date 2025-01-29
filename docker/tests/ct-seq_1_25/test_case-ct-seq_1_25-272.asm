.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
OR ESI, 0b1000000000000000000000000000000 # instrumentation
BSR EAX, ESI 
AND RDX, 0b1111111111111 # instrumentation
CMOVNBE EAX, dword ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
MOVSX CX, byte ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK INC byte ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
CMP DI, word ptr [R14 + RBX] 
LAHF  
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RDX], DL 
AND RSI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RSI], AL 
OR EAX, 0b1000000000000000000000000000000 # instrumentation
BSR EBX, EAX 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RBX], AX 
MOVSX CX, AL 
AND RSI, 0b1111111111111 # instrumentation
ADC RSI, qword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
MUL qword ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
IMUL DI, word ptr [R14 + RCX], 1 
ADD DIL, -91 # instrumentation
CMOVZ AX, DX 
AND RAX, 0b1111111111111 # instrumentation
CMOVNB EBX, dword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RDX], -56 
AND RCX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RCX], ESI 
CMP RDX, 14 
SBB AX, 27354 
AND RDX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RDX], -90 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RCX], -62 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RBX], RBX 
AND RAX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RAX], CL 
AND RAX, 0b1111111111111 # instrumentation
IMUL RDI, qword ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
