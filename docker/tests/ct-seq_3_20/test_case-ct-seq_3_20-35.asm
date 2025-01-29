.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
CMOVZ RAX, qword ptr [R14 + RSI] 
CMOVNS SI, DI 
AND RAX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RBX], DX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNZ DI, word ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RDX], RSI 
AND RDI, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RDI] 
ADD DIL, -56 # instrumentation
JNL .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
CMOVNL RAX, qword ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDI], EDI 
MOVSX CX, BL 
LEA EDX, qword ptr [RDX + RAX] 
AND RSI, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RSI], DL 
JMP .bb_main.2 
.bb_main.2:
LEA RDI, qword ptr [RCX] 
AND RBX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RBX], RSI 
AND RDX, 0b1111111111111 # instrumentation
CMOVNO RSI, qword ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RCX], -55 
AND RAX, 0b1111111111111 # instrumentation
SUB CL, byte ptr [R14 + RAX] 
BSWAP EDI 
AND RAX, 0b1111111111111 # instrumentation
SBB AL, byte ptr [R14 + RAX] 
CMOVB BX, DX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
