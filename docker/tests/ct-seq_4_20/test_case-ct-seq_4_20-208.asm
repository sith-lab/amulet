.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
IMUL EDI, dword ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNL RSI, qword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK NEG byte ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RSI] 
JS .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
CMP CX, word ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
CMOVS CX, word ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RCX], 65 
AND RDX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RDX], 22 
AND RBX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RBX], DL 
AND RAX, 0b1111111111111 # instrumentation
ADC CL, byte ptr [R14 + RAX] 
JMP .bb_main.2 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
IMUL dword ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
MOVZX EDI, byte ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDX], BL 
CMP ESI, -85 
JNB .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
ADD DIL, 31 # instrumentation
CMOVS DX, BX 
SUB SIL, -6 
AND RDX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDX], 1 # instrumentation
AND RAX, 0b1111111111111 # instrumentation
IMUL word ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
SBB DL, byte ptr [R14 + RSI] 
CMOVNB EAX, ESI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
