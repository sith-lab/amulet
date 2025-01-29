.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
CMOVB RCX, qword ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
CMOVB EAX, dword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDX], 0b1000000000000000000000000000000 # instrumentation
BSF RDI, qword ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVP DI, word ptr [R14 + RDI] 
JNBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RDI], 1 
AND RBX, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RBX], EDI 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RAX], -82 
AND RCX, 0b1111111111111 # instrumentation
CMOVNL DX, word ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNLE DI, word ptr [R14 + RDI] 
LOOPE .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RDI], 34 
AND RSI, 0b1111111111111 # instrumentation
CMOVNO BX, word ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
CMOVS EAX, dword ptr [R14 + RDI] 
JMP .bb_main.3 
.bb_main.3:
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RDX], 36 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RAX], DL 
AND RBX, 0b1111111111111 # instrumentation
SBB DL, byte ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
AND RDI, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RDI], 49 
AND RBX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RBX], EAX 
AND RDX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RDX], RBX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
