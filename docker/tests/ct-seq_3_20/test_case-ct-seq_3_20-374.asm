.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
CMOVNB RAX, qword ptr [R14 + RAX] 
OR RBX, 0b1000000000000000000000000000000 # instrumentation
BSR RBX, RBX 
AND RCX, 0b1111111111111 # instrumentation
MUL qword ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RBX], 110 
JS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
MOVSX ESI, DX 
AND RBX, 0b1111111111111 # instrumentation
CMOVNZ DI, word ptr [R14 + RBX] 
NEG AX 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RAX], RCX 
SUB DIL, -70 
AND RBX, 0b1111111111111 # instrumentation
ADC ECX, dword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK INC word ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RSI], AL 
AND RSI, 0b1111111111111 # instrumentation
CMOVNL RAX, qword ptr [R14 + RSI] 
JBE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
IMUL RAX, qword ptr [R14 + RBX], -62 
AND RDI, 0b1111111111111 # instrumentation
CMOVNL ECX, dword ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
LOCK DEC dword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
MOV DL, byte ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDX], 52 
NEG DL 
CMP SIL, -70 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
