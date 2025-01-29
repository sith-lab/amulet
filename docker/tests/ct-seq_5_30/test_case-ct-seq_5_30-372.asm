.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RCX], 489555559 
AND RCX, 0b1111111111111 # instrumentation
MOV BL, byte ptr [R14 + RCX] 
CMOVNBE RDI, RCX 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RDI], -21 
AND RSI, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RSI], -123 
AND RDI, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RDI], -1 
MOVSX ECX, SI 
CMOVNP SI, DI 
MOV AL, 96 
AND RCX, 0b1111111111111 # instrumentation
MUL qword ptr [R14 + RCX] 
JO .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
ADD SIL, -13 # instrumentation
CMOVLE DX, DI 
MOV EAX, 1799224395 
AND RDX, 0b1111111111111 # instrumentation
MUL dword ptr [R14 + RDX] 
JMP .bb_main.2 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RCX], 38 
MOVZX SI, BL 
CMOVB RCX, RBX 
ADC CL, DL 
JNP .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
AND RSI, 0b1111111111111 # instrumentation
SUB DX, word ptr [R14 + RSI] 
ADD RDX, RDX 
OR EAX, 0b1000000000000000000000000000000 # instrumentation
BSF EDI, EAX 
CMP DX, DI 
AND RDI, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RDI], 89 
CWD  
AND RCX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RCX], ECX 
AND RCX, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
ADC EAX, dword ptr [R14 + RDX] 
CMOVO RDI, RSI 
JMP .bb_main.4 
.bb_main.4:
ADD SIL, 44 # instrumentation
SBB SI, SI 
BSWAP EDX 
AND RDX, 0b1111111111111 # instrumentation
CMOVS EBX, dword ptr [R14 + RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
