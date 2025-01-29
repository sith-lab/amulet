.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
CMOVNS AX, word ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNB RSI, qword ptr [R14 + RAX] 
CMOVNO DX, DX 
IMUL RDI, RSI 
AND RBX, 0b1111111111111 # instrumentation
CMP DL, byte ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RDI], -91 
DEC SI 
AND RBX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RBX], BL 
AND RCX, 0b1111111111111 # instrumentation
CMOVLE RDI, qword ptr [R14 + RCX] 
CMOVNP RCX, RBX 
CMOVNB CX, DX 
CMP SIL, DL 
AND RCX, 0b1111111111111 # instrumentation
CMOVNZ ESI, dword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
MUL qword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
CMP DL, byte ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
CMP RDX, qword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RBX], DL 
AND RDX, 0b1111111111111 # instrumentation
SBB AL, byte ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
IMUL ESI, dword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RCX], -114 
MOV ECX, 1145331601 
AND RCX, 0b1111111111111 # instrumentation
IMUL dword ptr [R14 + RCX] 
ADC AX, 23673 
XCHG EDI, EAX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
