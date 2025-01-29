.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
MUL dword ptr [R14 + RSI] 
MOVSX DX, SIL 
AND RBX, 0b1111111111111 # instrumentation
LOCK DEC dword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RBX], -85 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RDI], DL 
JNB .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
MOVSX ESI, DIL 
MOV RCX, RDI 
AND RDI, 0b1111111111111 # instrumentation
CMOVB CX, word ptr [R14 + RDI] 
IMUL CL 
AND RBX, 0b1111111111111 # instrumentation
CMOVP RDX, qword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RDX], -16 
MUL BL 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RDI], RDX 
JMP .bb_main.2 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
SBB RAX, qword ptr [R14 + RCX] 
DEC BL 
AND RSI, 0b1111111111111 # instrumentation
ADD AL, byte ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
CMP SI, word ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RCX], RAX 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RDI], 49 
MOVSX ESI, DL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
