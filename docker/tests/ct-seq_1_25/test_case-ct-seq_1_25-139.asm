.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
CMOVBE EDI, dword ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RCX], EBX 
AND RDI, 0b1111111111111 # instrumentation
CMOVZ EDX, dword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
CMOVZ RAX, qword ptr [R14 + RBX] 
INC DIL 
CMOVNL EBX, ESI 
CMP EAX, -895168677 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RCX], 13 
AND RBX, 0b1111111111111 # instrumentation
CMOVBE RDX, qword ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK NEG byte ptr [R14 + RSI] 
CMOVL RCX, RCX 
CMOVNO EBX, EDX 
IMUL SI, CX 
SBB RCX, -77 
IMUL SI, SI 
AND RBX, 0b1111111111111 # instrumentation
IMUL RCX, qword ptr [R14 + RBX] 
SUB AX, 19876 
AND RDI, 0b1111111111111 # instrumentation
LOCK INC word ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
SBB RCX, qword ptr [R14 + RDX] 
INC SIL 
CMOVNO CX, SI 
CMOVLE DX, BX 
AND RSI, 0b1111111111111 # instrumentation
LOCK NEG dword ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RSI], BX 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RSI], -84 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
