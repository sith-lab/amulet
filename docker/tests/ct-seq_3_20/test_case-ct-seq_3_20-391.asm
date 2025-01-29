.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
MOV DL, byte ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RAX], 44 
AND RAX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RAX], RBX 
AND RDX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RDX], SIL 
AND RBX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RBX], DIL 
AND RCX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RCX], DL 
JMP .bb_main.1 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RDX], DL 
INC CX 
AND RDX, 0b1111111111111 # instrumentation
CMP DL, byte ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
INC word ptr [R14 + RBX] 
JNL .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RBX], -85 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RSI], RAX 
ADD AL, 36 
AND RBX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RBX], 0b1000000000000000000000000000000 # instrumentation
BSR RSI, qword ptr [R14 + RBX] 
MOV RBX, RAX 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RCX], DIL 
SBB RAX, 1671591047 
AND RSI, 0b1111111111111 # instrumentation
CMP EDI, dword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RAX], DIL 
AND RBX, 0b1111111111111 # instrumentation
IMUL dword ptr [R14 + RBX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
