.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RSI], 26 
AND RSI, 0b1111111111111 # instrumentation
CMOVO ECX, dword ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
MUL dword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RDI], RDX 
AND RAX, 0b1111111111111 # instrumentation
CMOVNZ EDX, dword ptr [R14 + RAX] 
MOV RDX, RCX 
OR AL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV AL 
ADD SIL, -39 # instrumentation
JNBE .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
ADD BX, word ptr [R14 + RCX] 
CMOVP DI, BX 
ADD EDI, -42 
SBB RAX, 1913150226 
AND RDX, 0b1111111111111 # instrumentation
CMOVNO CX, word ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RDI], DX 
AND RAX, 0b1111111111111 # instrumentation
CMOVNLE ECX, dword ptr [R14 + RAX] 
JMP .bb_main.2 
.bb_main.2:
ADD DIL, 64 # instrumentation
CMOVP EDX, EAX 
CMOVNLE EAX, EDX 
AND RDX, 0b1111111111111 # instrumentation
CMOVB EBX, dword ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
MUL word ptr [R14 + RAX] 
ADD SIL, 3 # instrumentation
JNL .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RCX], 42 
CMP DL, 76 
OR ECX, 0b1000000000000000000000000000000 # instrumentation
BSR EDI, ECX 
AND RCX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RCX], ESI 
AND RDX, 0b1111111111111 # instrumentation
CMOVNO RSI, qword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RSI], 76 
JNO .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RBX, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RBX] 
CMOVNS RDX, RCX 
AND RCX, 0b1111111111111 # instrumentation
CMOVS SI, word ptr [R14 + RCX] 
CMOVS DX, DI 
CMOVNP DI, AX 
JNB .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
ADD DIL, 26 # instrumentation
CMOVNS AX, BX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
