.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
CMP CL, byte ptr [R14 + RBX] 
CMPXCHG AL, DL 
MOV ESI, 1279368812 
CMOVNBE CX, BX 
MOVZX EAX, SI 
CMOVBE ECX, ESI 
OR ECX, 0b1000000000000000000000000000000 # instrumentation
BSF EBX, ECX 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RSI], 68 
AND BL, DL 
CMOVNP EAX, ESI 
CMOVNLE RAX, RAX 
AND RSI, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RSI], CL 
JL .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
XOR RAX, -282713692 
MOV RDI, 3498315966162415470 
AND RSI, 0b1111111111111 # instrumentation
SBB RCX, qword ptr [R14 + RSI] 
CMOVP EBX, EDI 
SBB SIL, AL 
ADC AL, AL 
AND RSI, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RSI], BL 
AND RSI, 0b1111111111111 # instrumentation
ADC AL, byte ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
ADD BL, byte ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
XOR dword ptr [R14 + RDX], ESI 
XCHG RSI, RAX 
TEST EAX, 1313069081 
INC RCX 
JMP .bb_main.2 
.bb_main.2:
ADD SIL, -59 # instrumentation
CMOVLE CX, AX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNL EDX, dword ptr [R14 + RDX] 
MOVSX RBX, DL 
TEST DIL, -100 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RBX], -106 
SBB RBX, -40 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RDX], -80 
IMUL RAX, RAX 
AND RSI, 61 
OR DIL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV DIL 
AND RCX, 0b1111111111111 # instrumentation
LOCK OR word ptr [R14 + RCX], 36 
AND RDI, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RDI], 1 # instrumentation
MOV AX, 1 # instrumentation
DIV byte ptr [R14 + RDI] 
MUL AL 
ADD DIL, -52 # instrumentation
CMOVNL EAX, EDX 
AND BL, 62 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
