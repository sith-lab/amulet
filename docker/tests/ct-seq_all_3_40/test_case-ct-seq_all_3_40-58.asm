.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
ADC CL, byte ptr [R14 + RDI] 
CMPXCHG RDI, RDI 
CMOVNB RSI, RDI 
TEST RSI, -1416034207 
AND RBX, 0b1111111111111 # instrumentation
CMOVNP ESI, dword ptr [R14 + RBX] 
CMOVNS CX, DI 
DEC DL 
SETNLE DL 
AND RAX, 0b1111111111111 # instrumentation
OR ECX, dword ptr [R14 + RAX] 
CMOVNS CX, CX 
SBB AL, 83 
AND SI, CX 
ADC BL, DL 
AND RDX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDX], 0b1000000000000000 # instrumentation
BSF SI, word ptr [R14 + RDX] 
CMOVZ DX, DX 
AND AX, CX 
ADD DIL, -121 # instrumentation
LAHF  
XADD EBX, EBX 
JMP .bb_main.1 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
XOR word ptr [R14 + RCX], -95 
SUB EAX, -1964435633 
CMOVB ECX, ESI 
DEC EBX 
CMPXCHG ESI, EAX 
ADD BL, -36 
JNO .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
CLD  # instrumentation
MOVZX ESI, DL 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
SCASB  
AND RSI, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RSI], DL 
MOV EBX, -1182714212 
AND RBX, 0b1111111111111 # instrumentation
CMOVZ EAX, dword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNLE DI, word ptr [R14 + RDI] 
NOT BX 
CMOVNS ESI, EBX 
AND RCX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RCX], 17 
CMOVNZ RDX, RBX 
OR EAX, 0b1000000000000000000000000000000 # instrumentation
BSR EAX, EAX 
AND RSI, 0b1111111111111 # instrumentation
CMOVBE AX, word ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
CMOVBE CX, word ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
SCASB  
SETB CL 
ADC AL, 121 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
