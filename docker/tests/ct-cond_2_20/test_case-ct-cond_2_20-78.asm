.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RBX], DIL 
AND RSI, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RSI], DI 
MOV CX, 32092 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RDX], RDI 
AND RCX, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNP DI, word ptr [R14 + RDI] 
CMOVNS AX, AX 
AND RCX, 0b1111111111111 # instrumentation
CMP BL, byte ptr [R14 + RCX] 
JNB .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
CMOVNZ RSI, qword ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
SBB EAX, dword ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
INC dword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
IMUL dword ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RSI], SIL 
AND RAX, 0b1111111111111 # instrumentation
MUL word ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNBE ECX, dword ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVL BX, word ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
IMUL word ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RSI], -63 
STC  
AND RSI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RSI], 0b1000000000000000000000000000000 # instrumentation
BSF RAX, qword ptr [R14 + RSI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
