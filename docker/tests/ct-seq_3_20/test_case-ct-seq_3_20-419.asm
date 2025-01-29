.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
CMOVNLE SI, word ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RDI], RAX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNL DI, word ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
MUL dword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVO EBX, dword ptr [R14 + RSI] 
MOVZX RCX, SI 
AND RAX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RAX], DL 
JNO .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
CMOVNL EAX, dword ptr [R14 + RDI] 
CMOVNBE RCX, RSI 
CMOVNZ CX, CX 
AND RSI, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RSI], SI 
STD  
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RDX], 125 
JNL .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
SUB EDX, -124 
AND RDX, 0b1111111111111 # instrumentation
CMP ESI, dword ptr [R14 + RDX] 
ADD AX, -16047 
AND RDX, 0b1111111111111 # instrumentation
MUL dword ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
IMUL RSI, qword ptr [R14 + RDI], 54 
ADD RCX, RDX 
AND RDX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RDX], DIL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
