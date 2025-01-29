.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RDX], 6 
ADC RAX, -715459771 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RBX], 89 
AND RBX, 0b1111111111111 # instrumentation
LOCK NEG byte ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RCX], DX 
MUL BX 
CMOVB DI, AX 
AND RSI, 0b1111111111111 # instrumentation
CMOVNP EAX, dword ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
CMP CL, byte ptr [R14 + RBX] 
JNB .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD RAX, -1825440173 
AND RDX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDX], AL 
AND RBX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RBX], EAX 
AND RAX, 0b1111111111111 # instrumentation
CMOVL BX, word ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
MOVSX RAX, word ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNBE DI, word ptr [R14 + RAX] 
JRCXZ .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RCX], 19 
CMOVZ ESI, ESI 
ADD RAX, -1589672294 
AND RCX, 0b1111111111111 # instrumentation
DEC qword ptr [R14 + RCX] 
MOV ECX, 1261767911 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
