.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD ECX, -58 
AND RSI, 0b1111111111111 # instrumentation
ADD SI, word ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RCX], 0b1000000000000000000000000000000 # instrumentation
BSR EBX, dword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RDI], BL 
OR RDX, 0b1000000000000000000000000000000 # instrumentation
BSR RBX, RDX 
ADD DIL, -78 # instrumentation
CMOVNO RDX, RBX 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RDI], RDX 
CDQ  
JNL .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
ADD DIL, 13 # instrumentation
SBB AL, 108 
AND RSI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RSI], 0b1000000000000000 # instrumentation
BSF BX, word ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RBX], RCX 
AND RSI, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNLE EDI, dword ptr [R14 + RDX] 
JMP .bb_main.2 
.bb_main.2:
CLC  
AND RSI, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RSI], -31 
SBB AX, BX 
IMUL RSI, RSI 
AND RDX, 0b1111111111111 # instrumentation
CMOVNBE ESI, dword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNS EDX, dword ptr [R14 + RSI] 
JO .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
AND RAX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RAX], -102 
CMP DIL, CL 
AND RDI, 0b1111111111111 # instrumentation
MOVSX RDX, word ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
ADC AL, byte ptr [R14 + RSI] 
SBB CL, -32 
CMP EAX, -1310291867 
JNBE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
IMUL BL 
AND RDI, 0b1111111111111 # instrumentation
IMUL RSI, qword ptr [R14 + RDI] 
CMP RAX, 2094253066 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RBX], RDI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
