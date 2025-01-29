.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
LOCK DEC byte ptr [R14 + RSI] 
CMP CX, SI 
AND RSI, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNS RCX, qword ptr [R14 + RBX] 
JNBE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
DEC RDX 
AND RDX, 0b1111111111111 # instrumentation
CMOVL EDX, dword ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RAX], -97 
AND RDI, 0b1111111111111 # instrumentation
MOVZX DX, byte ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RBX], 102 
MOV ESI, 881426148 
MOV DL, CL 
JS .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
ADD DIL, 117 # instrumentation
CMOVNL RCX, RCX 
AND RCX, 0b1111111111111 # instrumentation
CMOVS CX, word ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
SBB CL, byte ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RBX], -8 
AND RAX, 0b1111111111111 # instrumentation
CMOVNP RDI, qword ptr [R14 + RAX] 
JMP .bb_main.3 
.bb_main.3:
BSWAP EBX 
AND RDX, 0b1111111111111 # instrumentation
CMOVZ CX, word ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
MOV CL, byte ptr [R14 + RDI] 
CMP CX, -117 
JMP .bb_main.4 
.bb_main.4:
ADD AX, -115 
NEG CL 
MUL CL 
JNO .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
ADD SIL, -50 # instrumentation
SBB AL, -42 
AND RDX, 0b1111111111111 # instrumentation
CMOVO EAX, dword ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RBX], DX 
ADD AX, 19232 
AND RAX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RAX], RDX 
XCHG DIL, DL 
BSWAP RCX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
