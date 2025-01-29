.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND EDX, EDI 
OR ESI, 1 # instrumentation
AND EDX, ESI # instrumentation
SHR EDX, 1 # instrumentation
DIV ESI 
AND RDI, 0b1111111111111 # instrumentation
TEST word ptr [R14 + RDI], 30287 
AND RCX, 0b1111111111111 # instrumentation
IMUL BX, word ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNO RDI, qword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RBX], 71 
AND RCX, 0b1111111111111 # instrumentation
NOT qword ptr [R14 + RCX] 
CMOVBE RDI, RDI 
JMP .bb_main.1 
.bb_main.1:
ADD CX, 53 
AND RAX, 0b1111111111111 # instrumentation
XOR BL, byte ptr [R14 + RAX] 
SETNBE DL 
AND RCX, 0b1111111111111 # instrumentation
IMUL AX, word ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
XOR dword ptr [R14 + RDI], 106 
ADC EBX, EAX 
BSWAP RBX 
MOVSX BX, BL 
NOT BL 
AND RSI, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RSI], CL 
CMOVNLE EBX, ESI 
JMP .bb_main.2 
.bb_main.2:
MUL EBX 
MOVSX RAX, SIL 
AND RBX, 0b1111111111111 # instrumentation
CMP BL, byte ptr [R14 + RBX] 
MOV DI, -21784 
INC AL 
AND RAX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RAX], 1 # instrumentation
AND DX, word ptr [R14 + RAX] # instrumentation
SHR DX, 1 # instrumentation
DIV word ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNO RDI, qword ptr [R14 + RBX] 
JNO .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
OR ESI, 0b1000000000000000000000000000000 # instrumentation
BSR ECX, ESI 
AND RCX, 0b1111111111111 # instrumentation
MOV EDI, dword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDI], 0b1000000000000000 # instrumentation
BSF SI, word ptr [R14 + RDI] 
SETNZ DL 
XCHG SI, CX 
SUB AX, 1927 
AND RBX, 0b1111111111111 # instrumentation
CMOVBE RBX, qword ptr [R14 + RBX] 
SETNL AL 
LOOPNE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
XCHG EDI, EAX 
CMP RCX, -13 
AND RDX, 0b1111111111111 # instrumentation
CMOVNP EBX, dword ptr [R14 + RDX] 
CMOVB DX, AX 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RCX], 79 
XCHG EDI, ECX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
