.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
MOV EDI, dword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
IMUL EAX, dword ptr [R14 + RBX] 
ADC RCX, RDX 
AND RAX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RAX], AL 
AND RAX, 0b1111111111111 # instrumentation
CMOVP BX, word ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
MOVZX CX, byte ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RCX], 0b1000000000000000000000000000000 # instrumentation
BSF RBX, qword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RDI], RBX 
LEA RBX, qword ptr [RSI] 
JS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RDI], DL 
AND RDX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RDX], DIL 
AND RSI, 0b1111111111111 # instrumentation
CMOVZ ESI, dword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RAX], -28 
BSWAP RBX 
MOVZX RCX, DI 
AND RBX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RBX], RAX 
AND RSI, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RSI], RSI 
CMOVNP RBX, RSI 
AND RAX, 0b1111111111111 # instrumentation
CMOVS DI, word ptr [R14 + RAX] 
MUL DL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
