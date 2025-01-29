.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
CMOVNZ AX, word ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RDI], -59 
ADC RCX, RBX 
AND RSI, 0b1111111111111 # instrumentation
IMUL RAX, qword ptr [R14 + RSI], 2 
AND RDX, 0b1111111111111 # instrumentation
CMOVNP AX, word ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RCX], AX 
AND RDI, 0b1111111111111 # instrumentation
CMOVB RSI, qword ptr [R14 + RDI] 
ADC AL, 16 
IMUL RDI, RSI 
SBB SI, CX 
AND RCX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RCX], RSI 
AND RAX, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RAX] 
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD SIL, 4 # instrumentation
SBB AL, -46 
CMOVNS ESI, ESI 
ADD RAX, -1850750679 
CMOVNS SI, DX 
DEC AL 
AND RDX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RDX], DL 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RAX], 41 
XCHG ESI, EAX 
MOV BX, -15032 
AND RCX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RCX] 
MOV DL, AL 
MOV DL, DL 
CMOVS RBX, RSI 
AND RAX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RAX], EAX 
AND RCX, 0b1111111111111 # instrumentation
MUL word ptr [R14 + RCX] 
IMUL RCX 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RDX], 54 
DEC DI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
