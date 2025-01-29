.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MOV SI, AX 
AND RDX, 0b1111111111111 # instrumentation
LOCK INC qword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
ADC BX, word ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNP RCX, qword ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
IMUL qword ptr [R14 + RAX] 
ADD CX, DX 
AND RAX, 0b1111111111111 # instrumentation
CMP RBX, qword ptr [R14 + RAX] 
JS .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
SBB AX, word ptr [R14 + RBX] 
ADD DI, DI 
AND RCX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RCX], AL 
AND RDX, 0b1111111111111 # instrumentation
SBB EAX, dword ptr [R14 + RDX] 
CMP EAX, 32 
AND RCX, 0b1111111111111 # instrumentation
INC dword ptr [R14 + RCX] 
JZ .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
MOVSX DX, byte ptr [R14 + RSI] 
ADD RDI, 28 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RAX], DL 
DEC CL 
AND RDX, 0b1111111111111 # instrumentation
CMOVB RDI, qword ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNL CX, word ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RAX], -59 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
