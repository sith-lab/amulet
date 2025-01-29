.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
NEG DX 
AND RBX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RBX], 1 # instrumentation
MOV AX, 1 # instrumentation
DIV byte ptr [R14 + RBX] 
ADD SIL, 52 # instrumentation
CMOVZ CX, DX 
MOV RSI, -2110050494447932956 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RSI], RBX 
XOR AL, 32 
JMP .bb_main.1 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RAX], 0b1000000000000000 # instrumentation
BSR SI, word ptr [R14 + RAX] 
ADD DIL, -90 # instrumentation
NOT DL 
NOT DL 
SETNLE BL 
SETNZ CL 
CMP ESI, EDI 
OR SI, 0b1000000000000000 # instrumentation
BSR DX, SI 
AND RDI, 0b1111111111111 # instrumentation
ADC DX, word ptr [R14 + RDI] 
SETLE DIL 
SETNB CL 
BSWAP RDX 
JL .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
SUB EAX, 27 
AND RBX, 0b1111111111111 # instrumentation
LOCK CMPXCHG byte ptr [R14 + RBX], CL 
AND RCX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RCX], -8 
AND RAX, 0b1111111111111 # instrumentation
CMOVNZ RSI, qword ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNO CX, word ptr [R14 + RBX] 
JB .bb_main.3 
JMP .bb_main.5 
.bb_main.3:
AND RBX, 0b1111111111111 # instrumentation
IMUL DX, word ptr [R14 + RBX], -72 
ADD DIL, -81 # instrumentation
CMOVZ RBX, RSI 
SUB AX, -11762 
AND RCX, 0b1111111111111 # instrumentation
CMP DIL, byte ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
AND DX, word ptr [R14 + RDX] 
LEA EBX, qword ptr [RDX] 
JS .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
XADD CL, BL 
ADC RCX, RDI 
DEC BX 
AND RSI, 0b1111111111111 # instrumentation
CMOVNP AX, word ptr [R14 + RSI] 
TEST CL, DL 
TEST BL, CL 
JMP .bb_main.5 
.bb_main.5:
SUB AX, -66 
SETNO AL 
ADD BL, DIL 
OR ECX, 0b1000000000000000000000000000000 # instrumentation
BSF ESI, ECX 
ADD SIL, 114 # instrumentation
CMOVS RCX, RDX 
AND RSI, 0b1111111111111 # instrumentation
SUB RDI, qword ptr [R14 + RSI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
