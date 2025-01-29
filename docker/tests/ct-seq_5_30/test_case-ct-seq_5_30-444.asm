.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, 76 
OR RBX, 0b1000000000000000000000000000000 # instrumentation
BSR RCX, RBX 
AND RAX, 0b1111111111111 # instrumentation
CMOVNZ SI, word ptr [R14 + RAX] 
ADD RDX, RCX 
AND RCX, 0b1111111111111 # instrumentation
ADD ECX, dword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
MOVSX EBX, word ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RBX], DL 
JNB .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
ADD SIL, -121 # instrumentation
LAHF  
DEC BL 
AND RSI, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RSI], BL 
CMOVNP BX, DI 
IMUL AL 
JMP .bb_main.2 
.bb_main.2:
IMUL ESI 
CMP AX, 490 
INC AL 
STD  
ADC SIL, -44 
MUL EDI 
JO .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RCX, 0b1111111111111 # instrumentation
MOV CL, byte ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RCX], BL 
AND RAX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RAX], -73 
AND RAX, 0b1111111111111 # instrumentation
MOVZX RCX, word ptr [R14 + RAX] 
JMP .bb_main.4 
.bb_main.4:
XCHG EBX, EBX 
AND RBX, 0b1111111111111 # instrumentation
AND RCX, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVZ RSI, qword ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
SUB EDX, dword ptr [R14 + RCX] 
OR RBX, 0b1000000000000000000000000000000 # instrumentation
BSR RBX, RBX 
AND RAX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RAX], EBX 
SBB AX, 2415 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
