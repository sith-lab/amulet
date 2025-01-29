.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
ADD AL, byte ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RDI], BX 
CMOVL RCX, RDX 
AND RBX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RBX], AL 
AND RSI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RSI], -1152496441 
CMOVZ AX, DX 
AND RCX, 0b1111111111111 # instrumentation
SBB DL, byte ptr [R14 + RCX] 
JNL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RDX], -85 
AND RAX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RAX], -28882 
AND RCX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RCX], 0b1000000000000000 # instrumentation
BSR AX, word ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
CMP DX, word ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
CMP RDI, qword ptr [R14 + RBX] 
OR BL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV BL 
ADD DIL, 42 # instrumentation
ADC RCX, RCX 
JMP .bb_main.2 
.bb_main.2:
ADD DIL, -49 # instrumentation
CMOVNL DX, SI 
BSWAP EDI 
AND RAX, 0b1111111111111 # instrumentation
MOVSX EAX, word ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RCX], BL 
AND RDI, 0b1111111111111 # instrumentation
SUB CX, word ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RAX], RCX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
