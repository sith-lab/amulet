.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, 86 # instrumentation
CMOVNLE RSI, RDX 
AND RAX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RAX], -49 
AND RDI, 0b1111111111111 # instrumentation
CMOVL CX, word ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNZ EBX, dword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RDI], -74 
AND RCX, 0b1111111111111 # instrumentation
LOCK DEC byte ptr [R14 + RCX] 
JNO .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RAX], 106 
AND RBX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RBX], 21 
AND RSI, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RSI], AL 
AND RDI, 0b1111111111111 # instrumentation
CMP RDX, qword ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
IMUL RDX, qword ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
SBB AL, byte ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RSI], AL 
JNLE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RSI], CL 
AND RSI, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RSI], DI 
ADD EBX, 19 
AND RDX, 0b1111111111111 # instrumentation
SUB DL, byte ptr [R14 + RDX] 
CMOVNBE SI, SI 
AND RCX, 0b1111111111111 # instrumentation
CMOVNL DX, word ptr [R14 + RCX] 
ADC DL, BL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
