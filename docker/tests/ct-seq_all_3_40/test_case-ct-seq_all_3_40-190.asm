.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
TEST SIL, SIL 
AND RAX, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RAX], 84638445 
ADC AL, CL 
AND DL, -97 
TEST BL, CL 
AND RCX, 0b1111111111111 # instrumentation
AND AX, word ptr [R14 + RCX] 
CMP RAX, -156917340 
CMP DX, -2 
AND RDX, 0b1111111111111 # instrumentation
OR CL, byte ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RDI], -50 
AND RSI, 0b1111111111111 # instrumentation
IMUL BX, word ptr [R14 + RSI], -126 
AND RSI, 0b1111111111111 # instrumentation
MOVSX ECX, byte ptr [R14 + RSI] 
CMP DX, -37 
AND RCX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RCX], -91 
JMP .bb_main.1 
.bb_main.1:
MUL CL 
MOVSX EDX, BX 
AND RCX, 0b1111111111111 # instrumentation
CMOVO DI, word ptr [R14 + RCX] 
SETNLE DL 
AND RSI, 0b1111111111111 # instrumentation
AND SIL, byte ptr [R14 + RSI] 
MOVSX DX, AL 
SETNL DL 
CMOVNB RDI, RDI 
SBB AL, 66 
IMUL EDX, EDX, -28 
MUL RCX 
AND RDX, 0b1111111111111 # instrumentation
LOCK AND byte ptr [R14 + RDX], BL 
SETS CL 
JLE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
SUB RSI, 117 
AND RSI, 0b1111111111111 # instrumentation
AND word ptr [R14 + RSI], -36 
SETO DL 
AND RBX, 0b1111111111111 # instrumentation
CMOVP SI, word ptr [R14 + RBX] 
TEST AX, SI 
ADC DIL, -25 
LAHF  
AND RAX, 0b1111111111111 # instrumentation
CMOVBE BX, word ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK AND word ptr [R14 + RCX], DI 
XADD EDI, ESI 
OR EAX, 1274801854 
AND BX, SI 
AND RCX, 0b1111111111111 # instrumentation
CMOVNZ DX, word ptr [R14 + RCX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
