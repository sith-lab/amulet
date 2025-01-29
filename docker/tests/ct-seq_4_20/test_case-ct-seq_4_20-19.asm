.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RAX], DL 
AND RBX, 0b1111111111111 # instrumentation
CMOVNO CX, word ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
MOVSX RDI, byte ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
ADD EDI, dword ptr [R14 + RAX] 
JNL .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
LOCK INC dword ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
MOV ESI, dword ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RCX], AL 
AND RAX, 0b1111111111111 # instrumentation
CMOVL ECX, dword ptr [R14 + RAX] 
JMP .bb_main.2 
.bb_main.2:
CMP RAX, 553755311 
AND RBX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RBX], SI 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RSI], CX 
AND RAX, 0b1111111111111 # instrumentation
CMOVZ RSI, qword ptr [R14 + RAX] 
JMP .bb_main.3 
.bb_main.3:
ADD RAX, -281041495 
AND RCX, 0b1111111111111 # instrumentation
CMOVBE CX, word ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK NEG word ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK DEC qword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RAX], 17 
AND RCX, 0b1111111111111 # instrumentation
IMUL dword ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
MOVSX RDI, byte ptr [R14 + RSI] 
CMOVNS RDX, RDI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
