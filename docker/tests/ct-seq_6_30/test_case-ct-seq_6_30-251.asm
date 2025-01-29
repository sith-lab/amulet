.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, 13 # instrumentation
CMOVBE EAX, EBX 
AND RCX, 0b1111111111111 # instrumentation
SUB RDI, qword ptr [R14 + RCX] 
CMOVLE ESI, EAX 
SUB ECX, 67 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RDX], RDI 
CMP DI, CX 
ADD DL, -95 
JS .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
ADD DIL, -70 # instrumentation
ADC RSI, -36 
AND RSI, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RSI], DX 
AND RDI, 0b1111111111111 # instrumentation
AND RCX, 0b1111111111111 # instrumentation
IMUL SI, word ptr [R14 + RCX] 
IMUL RSI 
ADC AX, -21828 
AND RDX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDX], 0b1000000000000000000000000000000 # instrumentation
BSR RDX, qword ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RAX], AX 
INC RCX 
JMP .bb_main.2 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
SBB DIL, byte ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RBX], 51 
AND RDI, 0b1111111111111 # instrumentation
CMOVB DI, word ptr [R14 + RDI] 
MOV EBX, 985034760 
JP .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RBX], RAX 
AND RDX, 0b1111111111111 # instrumentation
CMOVB ECX, dword ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RDI], DL 
AND RDX, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RDX] 
JL .bb_main.4 
JMP .bb_main.5 
.bb_main.4:
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RDX], ESI 
XCHG BX, AX 
ADD SI, BX 
ADC EAX, -599678659 
JMP .bb_main.5 
.bb_main.5:
SUB RSI, -24 
AND RSI, 0b1111111111111 # instrumentation
CMOVNS EDX, dword ptr [R14 + RSI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
