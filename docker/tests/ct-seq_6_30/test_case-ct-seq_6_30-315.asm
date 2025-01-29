.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
SUB AL, -33 
MOVZX RSI, DIL 
OR BX, 0b1000000000000000 # instrumentation
BSR BX, BX 
IMUL SI 
AND RSI, 0b1111111111111 # instrumentation
CMOVNO CX, word ptr [R14 + RSI] 
CMP ECX, ECX 
JMP .bb_main.1 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
CMOVNL AX, word ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
LOCK INC qword ptr [R14 + RCX] 
CMP RAX, 36 
AND RDX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RDX], RAX 
AND RAX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RAX], SI 
SUB AX, 10199 
JNZ .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
MOVSX ESI, CX 
MUL DL 
AND RDI, 0b1111111111111 # instrumentation
MOV RDX, qword ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNB RDX, qword ptr [R14 + RDX] 
CMOVZ CX, CX 
JNL .bb_main.3 
JMP .bb_main.5 
.bb_main.3:
AND RDX, 0b1111111111111 # instrumentation
CMOVZ BX, word ptr [R14 + RDX] 
JNP .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
ADD DIL, -62 # instrumentation
CMOVNP EAX, ECX 
AND RAX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RAX], CL 
AND RBX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RBX], 56 
AND RAX, 0b1111111111111 # instrumentation
LOCK INC dword ptr [R14 + RAX] 
LOOPNE .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
AND RDX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDX], 0b1000000000000000000000000000000 # instrumentation
BSF RDX, qword ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDX], 0b1000000000000000000000000000000 # instrumentation
BSR RCX, qword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RSI], EAX 
MOVZX RDX, AX 
XCHG RSI, RDI 
AND RBX, 0b1111111111111 # instrumentation
LOCK NEG byte ptr [R14 + RBX] 
CMOVS BX, SI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
