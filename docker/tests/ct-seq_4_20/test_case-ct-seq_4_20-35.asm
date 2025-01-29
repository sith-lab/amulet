.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RSI], 60 
MOV AL, 59 
CMOVB EDX, ECX 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RBX], RAX 
JMP .bb_main.1 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
MUL dword ptr [R14 + RBX] 
NEG ESI 
IMUL SI, DI, 56 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RCX], 21 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RCX], -29 
AND RBX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RBX], DL 
JNZ .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
LOCK DEC word ptr [R14 + RAX] 
OR BX, 0b1000000000000000 # instrumentation
BSF DI, BX 
ADD EAX, -37263913 
AND RSI, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RSI], DX 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RAX], ESI 
JNL .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RSI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RSI], RAX 
AND RCX, 0b1111111111111 # instrumentation
CMOVNLE RCX, qword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RDI], RAX 
AND RCX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RCX], 65 
AND RBX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RBX], RBX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
