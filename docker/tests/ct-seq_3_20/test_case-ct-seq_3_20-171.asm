.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CMP AX, 26547 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RSI], 55 
MOVSX ECX, AX 
AND RAX, 0b1111111111111 # instrumentation
CMOVNB DX, word ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
MOVZX RSI, byte ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RSI], EDI 
AND RSI, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RSI] 
JNP .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
SUB RCX, 9 
SBB AL, CL 
AND RSI, 0b1111111111111 # instrumentation
CMOVBE AX, word ptr [R14 + RSI] 
JMP .bb_main.2 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RCX], BL 
AND RCX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RCX], -36 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RCX], EAX 
CMOVP DX, SI 
NEG ECX 
AND RSI, 0b1111111111111 # instrumentation
SUB EBX, dword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
MUL qword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RBX], DI 
CMOVNO DX, DX 
AND RCX, 0b1111111111111 # instrumentation
CMOVLE RBX, qword ptr [R14 + RCX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
