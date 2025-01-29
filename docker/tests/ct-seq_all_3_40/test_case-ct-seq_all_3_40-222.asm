.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
INC RSI 
AND RDX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RDX], DL 
AND RSI, 0b1111111111111 # instrumentation
LOCK XOR dword ptr [R14 + RSI], ECX 
XOR CX, SI 
TEST EAX, -947572328 
AND RSI, 0b1111111111111 # instrumentation
CMOVNS EAX, dword ptr [R14 + RSI] 
CMOVB RCX, RDI 
CMOVO ECX, EBX 
SETNS BL 
ADC RAX, -1425401349 
AND RAX, 0b1111111111111 # instrumentation
ADD DL, byte ptr [R14 + RAX] 
SETBE BL 
CMOVNS BX, SI 
AND RBX, 0b1111111111111 # instrumentation
LOCK NOT qword ptr [R14 + RBX] 
JMP .bb_main.1 
.bb_main.1:
CLD  # instrumentation
TEST RAX, 1434222280 
ADD CL, CL 
DEC CL 
AND RAX, 0b1111111111111 # instrumentation
SUB BX, word ptr [R14 + RAX] 
NOT BL 
AND RDI, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RDI], -69 
ADD RAX, RBX 
CMOVNS DX, DX 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
STOSW  
AND RSI, 0b1111111111111 # instrumentation
CMOVNP EDX, dword ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNO CX, word ptr [R14 + RSI] 
MOVZX ESI, DIL 
AND RAX, 0b1111111111111 # instrumentation
LOCK AND qword ptr [R14 + RAX], RBX 
AND CL, 67 
LOOPNE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
LOCK NEG dword ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
SETBE byte ptr [R14 + RDI] 
OR BL, -92 
AND RCX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RCX], -70 
AND RCX, 0b1111111111111 # instrumentation
CMOVP RSI, qword ptr [R14 + RCX] 
ADC DL, CL 
MUL DI 
OR DX, 0b1000000000000000 # instrumentation
BSR AX, DX 
AND RCX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RCX], -96 
TEST AX, 22669 
AND RCX, 0b1111111111111 # instrumentation
CMOVS RBX, qword ptr [R14 + RCX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
