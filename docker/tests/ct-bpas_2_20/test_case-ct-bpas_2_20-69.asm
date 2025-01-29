.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RDI], AX 
AND RSI, 0b1111111111111 # instrumentation
LOCK NEG word ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
IMUL word ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNS EDI, dword ptr [R14 + RCX] 
OR RBX, 0b1000000000000000000000000000000 # instrumentation
BSF RBX, RBX 
AND RDI, 0b1111111111111 # instrumentation
CMP SI, word ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNB RSI, qword ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVLE ESI, dword ptr [R14 + RDI] 
LOOPE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
IMUL qword ptr [R14 + RBX] 
XCHG EAX, EDI 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RDX], 96 
MUL RBX 
AND RCX, 0b1111111111111 # instrumentation
CMOVNL EAX, dword ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNB RAX, qword ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNB EDX, dword ptr [R14 + RBX] 
IMUL ECX, EBX 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RAX], -100 
XCHG DL, DL 
AND RAX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RAX], -1730866868 
AND RCX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RCX], -52 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
