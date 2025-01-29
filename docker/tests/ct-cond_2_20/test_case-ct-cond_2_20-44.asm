.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RCX], EDX 
AND RDI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDI], 45 
AND RCX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RCX], ECX 
AND RCX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RCX], RCX 
CMP DX, DX 
AND RBX, 0b1111111111111 # instrumentation
DEC dword ptr [R14 + RBX] 
CMOVNL RAX, RDX 
AND RBX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RBX], BX 
SUB ESI, EAX 
JNB .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
IMUL AX, word ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RBX], CL 
AND RSI, 0b1111111111111 # instrumentation
CMOVNL CX, word ptr [R14 + RSI] 
CMOVO RDI, RCX 
AND RBX, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RBX], EBX 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RBX], AL 
AND RDX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RDX], 1 # instrumentation
ADD AL, -73 
AND RCX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RCX], 90 
AND RCX, 0b1111111111111 # instrumentation
MOVSX EBX, word ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
IMUL byte ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
