.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
MOVZX DX, byte ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RCX], RAX 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RCX], -115 
IMUL RAX, RDI 
NEG RSI 
ADC CL, DL 
AND RDX, 0b1111111111111 # instrumentation
CMOVNB DI, word ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RSI], EBX 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RAX], -108 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RBX], -122 
AND RBX, 0b1111111111111 # instrumentation
CMP AL, byte ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RAX], EAX 
CMP SIL, 52 
JS .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RDI], -68 
AND RCX, 0b1111111111111 # instrumentation
CMOVNZ RCX, qword ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNL BX, word ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RSI], ECX 
JNP .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
ADD SIL, 125 # instrumentation
CMOVL RDI, RBX 
AND RBX, 0b1111111111111 # instrumentation
CMOVBE EDI, dword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK DEC qword ptr [R14 + RBX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
