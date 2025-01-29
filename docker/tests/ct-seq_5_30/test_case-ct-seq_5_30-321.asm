.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MOVSX EDI, DL 
CMP SIL, 120 
AND RDX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDX], RDI 
AND RDI, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RDI], -87 
MOV AL, -107 
JMP .bb_main.1 
.bb_main.1:
ADD DIL, -127 # instrumentation
CMC  
MUL AL 
MUL EAX 
ADD DIL, 114 # instrumentation
CMOVNP AX, BX 
AND RBX, 0b1111111111111 # instrumentation
MOVZX RSI, word ptr [R14 + RBX] 
OR EDX, 0b1000000000000000000000000000000 # instrumentation
BSF EBX, EDX 
NEG AL 
CMOVL ECX, ESI 
CMP DIL, -11 
JMP .bb_main.2 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RCX], 1 # instrumentation
MOV AX, 1 # instrumentation
DIV byte ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RCX], RBX 
ADD DI, 30 
AND RAX, 0b1111111111111 # instrumentation
CMOVO EAX, dword ptr [R14 + RAX] 
ADD AX, 5053 
ADD RDX, -108 
JMP .bb_main.3 
.bb_main.3:
XCHG EBX, EBX 
OR EBX, 0b1000000000000000000000000000000 # instrumentation
BSR ESI, EBX 
ADD SIL, -88 # instrumentation
CMOVP RDI, RSI 
AND RCX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RCX], 0b1000000000000000 # instrumentation
BSF DI, word ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RAX], CL 
JLE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RSI, 0b1111111111111 # instrumentation
ADD EAX, dword ptr [R14 + RSI] 
MUL DX 
AND RCX, 0b1111111111111 # instrumentation
CMOVS ESI, dword ptr [R14 + RCX] 
XCHG EDX, EAX 
AND RDX, 0b1111111111111 # instrumentation
INC dword ptr [R14 + RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
