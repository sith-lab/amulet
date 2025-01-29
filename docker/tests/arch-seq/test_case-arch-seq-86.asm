.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MOV DI, -2933 
CMP SI, 29 
XADD RAX, RDI 
AND RAX, 0b1111111111111 # instrumentation
SETNO byte ptr [R14 + RAX] 
SUB AL, AL 
INC CL 
XOR CX, AX 
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
XOR EAX, ECX 
AND RSI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RSI], 117 
AND RDI, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RDI], 1 # instrumentation
MOV AX, 1 # instrumentation
DIV byte ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
LOCK NOT dword ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
SBB DI, word ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RCX], ESI 
MOVZX RSI, CX 
CMOVNP RAX, RBX 
DEC CL 
XOR AL, -26 
CMOVB BX, CX 
JL .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
CLD  # instrumentation
MUL DX 
LEA RDX, qword ptr [RBX + RDI + 5328] 
AND RSI, 0b1111111111111 # instrumentation
AND byte ptr [R14 + RSI], CL 
AND RBX, 0b1111111111111 # instrumentation
LOCK DEC byte ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
STOSW  
AND RBX, 0b1111111111111 # instrumentation
MOVSX RCX, byte ptr [R14 + RBX] 
CMOVBE BX, CX 
SUB SI, 68 
SBB RDI, 89 
AND RDI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDI], 25390 
CMP AX, -7270 
CMOVP AX, BX 
JMP .bb_main.3 
.bb_main.3:
AND RBX, 0b1111111111111 # instrumentation
CMOVNB EDX, dword ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
NOT dword ptr [R14 + RCX] 
CMOVNZ ECX, ESI 
AND RSI, 0b1111111111111 # instrumentation
DEC word ptr [R14 + RSI] 
MOV RDX, 7536474225152080491 
AND CL, 90 
AND RDI, 0b1111111111111 # instrumentation
CMOVNS DI, word ptr [R14 + RDI] 
CMP AL, -104 
AND RDI, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RDI], EDI 
AND RAX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RAX], 81 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
