.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RAX], SI 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RCX], -53 
SUB DI, BX 
AND RDX, 0b1111111111111 # instrumentation
SBB RCX, qword ptr [R14 + RDX] 
SBB CX, CX 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RDI], DL 
JMP .bb_main.1 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RAX], BX 
AND RDX, 0b1111111111111 # instrumentation
MOVSX ECX, word ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVS SI, word ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNL EBX, dword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RAX], 0b1000000000000000000000000000000 # instrumentation
BSR RDI, qword ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RDI], CL 
JNP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
ADD ECX, 80 
MUL EDI 
DEC RSI 
AND RDX, 0b1111111111111 # instrumentation
NEG dword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
MOVSX RBX, byte ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
MOVSX RSI, word ptr [R14 + RCX] 
SBB AL, 27 
AND RAX, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
