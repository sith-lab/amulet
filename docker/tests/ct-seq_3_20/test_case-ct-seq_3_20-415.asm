.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RDI], AL 
AND RBX, 0b1111111111111 # instrumentation
IMUL byte ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RDX], -82 
AND RCX, 0b1111111111111 # instrumentation
INC word ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RAX], -39 
AND RCX, 0b1111111111111 # instrumentation
LOCK DEC word ptr [R14 + RCX] 
JNL .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
CMOVZ RCX, qword ptr [R14 + RAX] 
SUB DL, 99 
AND RBX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RBX], BX 
CMOVNBE SI, SI 
SUB EDI, -119 
LOOPE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
MOVZX RDI, BX 
AND RSI, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RSI], RDX 
MOV RBX, -7286056048213860562 
AND RDX, 0b1111111111111 # instrumentation
CMOVBE RDI, qword ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNO RSI, qword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
MUL dword ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RCX], DIL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
