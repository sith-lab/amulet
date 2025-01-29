.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, 71 # instrumentation
CMOVNLE EAX, EDX 
AND RCX, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RCX] 
LEA DX, qword ptr [RDX + RDX + 49166] 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RAX], CX 
CMOVL RDI, RAX 
SETB BL 
AND RSI, 0b1111111111111 # instrumentation
MOVSX EDX, byte ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
MUL qword ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
INC dword ptr [R14 + RAX] 
JP .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
AND CX, -14 
SBB EAX, 1194401343 
XCHG AX, DX 
TEST EBX, EDX 
AND RBX, 0b1111111111111 # instrumentation
MOVSX RBX, word ptr [R14 + RBX] 
XOR SIL, BL 
AND RBX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RBX], BL 
CMOVL RCX, RDI 
AND RAX, 0b1111111111111 # instrumentation
CMP AX, word ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
NEG dword ptr [R14 + RDI] 
SUB DIL, -123 
JNBE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
OR AL, 42 
ADD AL, 89 
OR DI, 0b1000000000000000 # instrumentation
BSR CX, DI 
JMP .bb_main.3 
.bb_main.3:
ADD DI, 8 
MOV DI, AX 
AND RCX, 0b1111111111111 # instrumentation
XOR qword ptr [R14 + RCX], -33 
XOR ESI, 7 
CMOVB EDI, ECX 
SETL AL 
OR RDI, RDI 
JBE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
CLD  # instrumentation
AND RDX, 0b1111111111111 # instrumentation
SETNO byte ptr [R14 + RDX] 
IMUL EBX 
AND RAX, 0b1111111111111 # instrumentation
NOT word ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
MOV ESI, dword ptr [R14 + RCX] 
SETLE CL 
OR ESI, EDX 
IMUL AX, BX 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
CMPSB  
CMP CL, 2 
CMOVNB RAX, RDI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
