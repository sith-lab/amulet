.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, -58 # instrumentation
CMOVNL DI, SI 
JNO .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
SUB DL, byte ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
SUB DIL, byte ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
IMUL DI, word ptr [R14 + RDI], -107 
AND RCX, 0b1111111111111 # instrumentation
CMOVP EBX, dword ptr [R14 + RCX] 
LOOPE .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDX], 0b1000000000000000 # instrumentation
BSF BX, word ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
MUL qword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RDI] 
CMOVNS EBX, EBX 
CMP RCX, -110 
AND RAX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RAX], -3 
SUB EAX, 633722804 
ADD ECX, 26 
CMP RDX, -128 
JO .bb_main.3 
JMP .bb_main.5 
.bb_main.3:
ADD SIL, -56 # instrumentation
CMOVNP EBX, ESI 
SBB AL, -97 
CMOVB RAX, RBX 
ADD RDX, 89 
JO .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
SUB DL, DL 
MOVSX EDX, DL 
AND RSI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RSI], AL 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RDX], 2 
JS .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
AND RBX, 0b1111111111111 # instrumentation
CMOVNP CX, word ptr [R14 + RBX] 
CMOVBE RSI, RAX 
AND RDI, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RDI], 38 
XCHG SIL, DIL 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RAX], AL 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RDX], RCX 
INC ESI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
