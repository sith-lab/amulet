.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, 126 # instrumentation
CMOVP ECX, EBX 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RDI], 45 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RSI], 32 
ADD AL, BL 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RSI], 53 
CMP EAX, -620997466 
AND RCX, 0b1111111111111 # instrumentation
CMOVB EBX, dword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RDI], BL 
AND RDI, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
LOCK INC dword ptr [R14 + RBX] 
SBB EAX, 359230331 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD DIL, 3 # instrumentation
CMOVNL RCX, RBX 
AND RSI, 0b1111111111111 # instrumentation
NEG dword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RAX], 5 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RSI], DL 
CMOVNB RCX, RDX 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RDX], -61 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RSI], DL 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RAX], CX 
AND RBX, 0b1111111111111 # instrumentation
ADC CL, byte ptr [R14 + RBX] 
MUL DL 
AND RDX, 0b1111111111111 # instrumentation
ADC CL, byte ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RSI], 36 
AND RBX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RBX], DI 
AND RDX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RDX], DX 
XCHG RCX, RAX 
MOVZX SI, BL 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RCX], BX 
ADC SIL, -103 
CMOVNO CX, DX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
