.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, 84 # instrumentation
CMOVNO SI, CX 
AND RDX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RDX], EAX 
STD  
JMP .bb_main.1 
.bb_main.1:
CMP DL, DL 
ADD ESI, -88 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RAX], -61 
SBB ECX, ECX 
XCHG RBX, RCX 
AND RBX, 0b1111111111111 # instrumentation
CMOVBE DX, word ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RDI], DIL 
AND RDX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDX], -10 
AND RDX, 0b1111111111111 # instrumentation
CMOVZ EAX, dword ptr [R14 + RDX] 
JMP .bb_main.2 
.bb_main.2:
ADD SIL, 41 # instrumentation
ADC DL, BL 
LAHF  
AND RSI, 0b1111111111111 # instrumentation
ADC RSI, qword ptr [R14 + RSI] 
ADD AL, -122 
JNS .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
AND RDX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDX], 0b1000000000000000000000000000000 # instrumentation
BSR RSI, qword ptr [R14 + RDX] 
SUB BX, BX 
CMP SIL, AL 
AND RCX, 0b1111111111111 # instrumentation
ADD ESI, dword ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNZ RDX, qword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RDX], 8 
JS .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
ADD SIL, 7 # instrumentation
MOVSX RSI, DL 
MOVSX RDX, BL 
SBB CX, SI 
IMUL CL 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RSI], EDX 
CMP AL, DL 
AND RDX, 0b1111111111111 # instrumentation
CMOVNBE SI, word ptr [R14 + RDX] 
MUL CX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
