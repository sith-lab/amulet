.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RAX], EBX 
AND RAX, 0b1111111111111 # instrumentation
CMOVS EBX, dword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RSI], BX 
AND RCX, 0b1111111111111 # instrumentation
ADD BL, byte ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RDI], RDX 
OR ECX, 0b1000000000000000000000000000000 # instrumentation
BSR ECX, ECX 
AND RCX, 0b1111111111111 # instrumentation
MUL word ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RAX], BL 
JL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
CLD  # instrumentation
AND RAX, 0b1111111111111 # instrumentation
CMP RSI, qword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVP BX, word ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNZ RSI, qword ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
CMP ECX, dword ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
SUB DIL, byte ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
IMUL RCX, qword ptr [R14 + RDX], -38 
AND RCX, 0b1111111111111 # instrumentation
LOCK INC byte ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
STOSW  
AND RBX, 0b1111111111111 # instrumentation
CMOVZ RDX, qword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RDX], -27 
AND RCX, 0b1111111111111 # instrumentation
MOVSX EDX, byte ptr [R14 + RCX] 
SUB AX, -1515 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
