.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
LOCK NEG dword ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RCX], RSI 
AND RBX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RBX], EBX 
AND RDI, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RDI], 124 
AND RSI, 0b1111111111111 # instrumentation
NEG dword ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNBE RDX, qword ptr [R14 + RSI] 
JMP .bb_main.1 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
CMOVL BX, word ptr [R14 + RAX] 
CMP DL, SIL 
AND RBX, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RBX] 
MUL DL 
ADC RCX, RSI 
AND RDX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RDX], -34 
JNP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
CMOVNB RBX, qword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
AND RAX, 0b1111111111111 # instrumentation
CMOVNZ RCX, qword ptr [R14 + RAX] 
JMP .bb_main.3 
.bb_main.3:
AND RSI, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RSI], -34 
SBB ESI, 80 
AND RBX, 0b1111111111111 # instrumentation
CMOVBE EDX, dword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
SUB DX, word ptr [R14 + RAX] 
ADD ECX, 59 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
