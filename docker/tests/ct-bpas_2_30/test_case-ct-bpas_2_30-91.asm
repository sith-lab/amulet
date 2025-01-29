.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RBX], DI 
OR CL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV CL 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RBX], 19 
INC ESI 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RBX], 15 
AND RBX, 0b1111111111111 # instrumentation
ADD RSI, qword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
SCASB  
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RCX], ECX 
AND RSI, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RSI], EBX 
STC  
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
LODSW  
MUL RCX 
CMP AL, 63 
SBB RAX, 784927050 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RDX], BL 
JO .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
IMUL SI, CX 
ADD BX, BX 
AND RAX, 0b1111111111111 # instrumentation
CMOVO RBX, qword ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RAX], 0b1000000000000000000000000000000 # instrumentation
BSR EBX, dword ptr [R14 + RAX] 
ADD SIL, -107 # instrumentation
XCHG RBX, RAX 
CMOVNS ECX, ECX 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RAX], DI 
INC RCX 
AND RBX, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RBX], RCX 
SBB RDX, RDX 
DEC BX 
AND RDX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RDX], 32 
ADD AX, SI 
ADC ESI, EBX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
