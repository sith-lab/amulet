.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, 28 # instrumentation
ADC RAX, -1015225025 
CMOVNL RBX, RBX 
MOVSX RDI, SIL 
AND BL, BL 
AND RCX, 0b1111111111111 # instrumentation
ADC SI, word ptr [R14 + RCX] 
OR CL, SIL 
AND RSI, 0b1111111111111 # instrumentation
MOVSX RCX, word ptr [R14 + RSI] 
SUB RDI, RDI 
CMOVO EBX, EBX 
AND AX, 22574 
AND SI, -52 
CMPXCHG CL, AL 
AND RSI, 0b1111111111111 # instrumentation
IMUL AX, word ptr [R14 + RSI] 
BSWAP RDI 
AND RDX, 0b1111111111111 # instrumentation
XOR qword ptr [R14 + RDX], RAX 
JNP .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
AND EBX, dword ptr [R14 + RCX] 
XOR ESI, 25 
ADD AL, 87 
AND RDX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RDX], RSI 
CMP DI, DX 
OR CX, 1 # instrumentation
AND DX, CX # instrumentation
SHR DX, 1 # instrumentation
DIV CX 
AND RDI, 0b1111111111111 # instrumentation
MOVZX RCX, byte ptr [R14 + RDI] 
STC  
AND RDI, 0b1111111111111 # instrumentation
CMPXCHG word ptr [R14 + RDI], DX 
JNS .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
ADD DIL, 101 # instrumentation
CMC  
AND RCX, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RCX] 
CLD  
AND DI, BX 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RSI], -29 
OR DL, -89 
CMOVNP RCX, RBX 
CWDE  
CMOVZ RDI, RCX 
MOVZX ECX, BL 
AND RDX, 0b1111111111111 # instrumentation
CMPXCHG qword ptr [R14 + RDX], RCX 
AND RAX, 0b1111111111111 # instrumentation
SETB byte ptr [R14 + RAX] 
CMOVL RDX, RSI 
SETNLE BL 
CMOVNO CX, AX 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
LODSD  
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
