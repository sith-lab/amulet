.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
CMOVS EDX, dword ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RSI], DX 
OR RDI, 0b1000000000000000000000000000000 # instrumentation
BSR RCX, RDI 
AND RAX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RAX], 89 
MOV RAX, 792055151550943363 
AND RDI, 0b1111111111111 # instrumentation
MOVZX RAX, byte ptr [R14 + RDI] 
XCHG EAX, EAX 
CMOVO RDI, RAX 
ADD DIL, -109 
MOV RCX, -404686011024541278 
AND RDX, 0b1111111111111 # instrumentation
CMOVNLE RBX, qword ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK DEC byte ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RSI], 117 
MUL AL 
CMOVNB ECX, ECX 
AND RDI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDI], -1084023561 
AND RBX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RBX], 54 
OR RBX, 0b1000000000000000000000000000000 # instrumentation
BSF RBX, RBX 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RAX], DL 
AND RAX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVZ SI, word ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RBX], 87 
AND RBX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RBX], 64 
AND RDX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RCX], 13 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
