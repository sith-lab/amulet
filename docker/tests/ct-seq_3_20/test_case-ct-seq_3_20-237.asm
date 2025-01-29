.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
CMOVB AX, word ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVB EBX, dword ptr [R14 + RDX] 
ADC RSI, RCX 
AND RBX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RBX], BX 
JMP .bb_main.1 
.bb_main.1:
ADD SIL, -128 # instrumentation
ADC DL, CL 
AND RBX, 0b1111111111111 # instrumentation
CMOVNLE EBX, dword ptr [R14 + RBX] 
SUB AX, 1428 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RCX], RBX 
IMUL DX, BX, -65 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RSI], 52 
AND RDX, 0b1111111111111 # instrumentation
ADC DL, byte ptr [R14 + RDX] 
MOVSX EAX, CL 
AND RDI, 0b1111111111111 # instrumentation
INC word ptr [R14 + RDI] 
JP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RAX], DL 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RAX], BX 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RSI], -118 
SUB RBX, 90 
AND RCX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RCX], 1 # instrumentation
AND DX, word ptr [R14 + RCX] # instrumentation
SHR DX, 1 # instrumentation
DIV word ptr [R14 + RCX] 
CMP BL, DL 
AND RDI, 0b1111111111111 # instrumentation
CMOVLE RDX, qword ptr [R14 + RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
