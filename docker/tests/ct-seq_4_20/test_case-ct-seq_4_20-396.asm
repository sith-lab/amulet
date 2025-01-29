.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
CMOVP ESI, dword ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RAX], -83 
AND RDI, 0b1111111111111 # instrumentation
CMOVNB ESI, dword ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
CMOVS AX, word ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
CMP SI, word ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
DEC word ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RAX], DL 
JNL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
CMOVNL DX, word ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RDX], DI 
AND RBX, 0b1111111111111 # instrumentation
MOVZX RBX, word ptr [R14 + RBX] 
SBB EAX, 452974353 
IMUL EBX, EDX, -7 
JMP .bb_main.2 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RCX], BL 
AND RAX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RAX], 119 
AND RDI, 0b1111111111111 # instrumentation
MOVSX RSI, word ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNB SI, word ptr [R14 + RAX] 
LOOPE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RBX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RBX], 54 
CMOVO EBX, EAX 
AND RDX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RDX], CX 
AND RBX, 0b1111111111111 # instrumentation
CMOVNBE SI, word ptr [R14 + RBX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
