.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RBX], RSI 
AND RBX, 0b1111111111111 # instrumentation
SUB DIL, byte ptr [R14 + RBX] 
ADC AL, 116 
AND RAX, 0b1111111111111 # instrumentation
AND BL, byte ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RAX], SI 
TEST RAX, 1401849953 
XOR BX, SI 
CMPXCHG DX, BX 
AND RDX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDX], SIL 
AND RAX, 0b1111111111111 # instrumentation
CMOVNLE ESI, dword ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
OR ESI, dword ptr [R14 + RDI] 
MOV RDI, RCX 
AND RAX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RAX], AX 
SUB AL, 17 
CMOVNZ EDI, EDI 
OR RDI, -117 
MOV BL, -102 
AND RDX, 0b1111111111111 # instrumentation
CMOVNP EDI, dword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RDX], DI 
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
CLD  # instrumentation
AND RDI, 0b1111111111111 # instrumentation
CMOVNS CX, word ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RDX], -69 
STC  
INC BL 
AND RBX, 0b1111111111111 # instrumentation
LOCK NOT word ptr [R14 + RBX] 
MOV CX, DX 
XOR EAX, -1810369109 
AND RDX, 0b1111111111111 # instrumentation
CMOVNB BX, word ptr [R14 + RDX] 
XCHG CX, AX 
AND RCX, 0b1111111111111 # instrumentation
XADD byte ptr [R14 + RCX], CL 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
SCASW  
ADD AL, -6 
AND RSI, 0b1111111111111 # instrumentation
MOVZX RCX, word ptr [R14 + RSI] 
LEA RSI, qword ptr [RDX] 
TEST EAX, 964817485 
AND RAX, -1518198449 
AND RAX, 0b1111111111111 # instrumentation
MUL word ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
NEG dword ptr [R14 + RDX] 
SBB EDI, -74 
AND RCX, 0b1111111111111 # instrumentation
MOV BL, byte ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK CMPXCHG word ptr [R14 + RCX], BX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
