.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RCX], BX 
AND RAX, 0b1111111111111 # instrumentation
CMOVNLE RSI, qword ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RAX], -92 
CMP RAX, 1626636552 
AND RCX, 0b1111111111111 # instrumentation
CMOVNO ESI, dword ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK INC word ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVZ SI, word ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
IMUL ECX, dword ptr [R14 + RBX], 22 
AND RSI, 0b1111111111111 # instrumentation
CMOVNS RDX, qword ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RSI], -30 
JNS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RBX], -71 
AND RDI, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RDI], DX 
AND RDX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RDX], -5 
AND RAX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RAX], EDX 
CMOVB RAX, RCX 
AND RSI, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RSI], 73 
AND RAX, 0b1111111111111 # instrumentation
CMOVP RDX, qword ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RBX], RCX 
AND RBX, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RBX], RDX 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RCX], AL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
