.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RDI], 109 
AND RCX, 0b1111111111111 # instrumentation
SBB AL, byte ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
MUL qword ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
SUB RDX, qword ptr [R14 + RSI] 
JS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
CMOVNZ RCX, qword ptr [R14 + RAX] 
MUL CL 
AND RBX, 0b1111111111111 # instrumentation
CMOVP RDX, qword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK DEC dword ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
MOVSX DX, byte ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RCX], DL 
AND RBX, 0b1111111111111 # instrumentation
CMOVNL SI, word ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RSI], EAX 
ADD DIL, 87 # instrumentation
LAHF  
CMOVNS RCX, RDX 
JRCXZ .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
CMOVNL BX, word ptr [R14 + RDI] 
CMC  
AND RSI, 0b1111111111111 # instrumentation
MOVZX RAX, word ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RDI], ESI 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RAX], BL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
