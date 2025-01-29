.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
DEC SI 
MUL EBX 
CMOVO RBX, RAX 
AND RSI, 0b1111111111111 # instrumentation
CMP RDX, qword ptr [R14 + RSI] 
CMOVZ ECX, EDI 
SUB SIL, -58 
AND RDI, 0b1111111111111 # instrumentation
CMOVBE RDI, qword ptr [R14 + RDI] 
XCHG RDX, RAX 
CMOVNBE CX, DI 
AND RAX, 0b1111111111111 # instrumentation
CMOVBE RBX, qword ptr [R14 + RAX] 
SBB RAX, 1750301339 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RDI], RBX 
AND RSI, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RSI], 36 
CMP RDX, 29 
AND RDI, 0b1111111111111 # instrumentation
LOCK DEC byte ptr [R14 + RDI] 
ADC RAX, 1617376456 
AND RSI, 0b1111111111111 # instrumentation
IMUL RDI, qword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RDI] 
JNL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
CMOVNLE RCX, qword ptr [R14 + RDX] 
ADD CL, -4 
IMUL RDX 
MOV CX, 6740 
AND RCX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RCX], AL 
CMOVZ DI, DX 
CMOVNS BX, DI 
AND RSI, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RSI], DL 
ADD CL, BL 
AND RCX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RCX], 0b1000000000000000 # instrumentation
BSR DX, word ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNO DI, word ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RCX], RBX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
