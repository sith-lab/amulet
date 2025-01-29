.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
XCHG EBX, EDI 
AND RDI, 0b1111111111111 # instrumentation
CMOVL RDX, qword ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
CMP DL, byte ptr [R14 + RCX] 
CWDE  
AND RDX, 0b1111111111111 # instrumentation
MOVZX ESI, byte ptr [R14 + RDX] 
CMP AX, -27 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RSI], 1 
CMOVNS RDI, RBX 
JNP .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RDI], AL 
AND RDI, 0b1111111111111 # instrumentation
CMOVNBE BX, word ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RAX], 26 
AND RBX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RBX], AX 
JMP .bb_main.2 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
SUB BX, word ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RDX], -33 
AND RSI, 0b1111111111111 # instrumentation
LOCK DEC byte ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNLE SI, word ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
ADC DX, word ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RCX], -23 
AND RSI, 0b1111111111111 # instrumentation
INC dword ptr [R14 + RSI] 
SBB AL, 36 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
