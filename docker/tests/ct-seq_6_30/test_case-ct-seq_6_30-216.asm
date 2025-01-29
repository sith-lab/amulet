.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MOVSX DX, DL 
AND RBX, 0b1111111111111 # instrumentation
SUB DX, word ptr [R14 + RBX] 
JMP .bb_main.1 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RAX], BX 
AND RSI, 0b1111111111111 # instrumentation
CMOVNS RCX, qword ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
CMOVL EDX, dword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
MOVSX RSI, byte ptr [R14 + RDI] 
JMP .bb_main.2 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
LOCK DEC byte ptr [R14 + RAX] 
JNL .bb_main.3 
JMP .bb_main.5 
.bb_main.3:
AND RDX, 0b1111111111111 # instrumentation
CMOVNO DI, word ptr [R14 + RDX] 
CMP AX, -29972 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RDI], ECX 
AND RSI, 0b1111111111111 # instrumentation
CMOVNB RSI, qword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDI], AL 
INC RDX 
MOV BL, CL 
BSWAP EAX 
AND RBX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RBX], SIL 
LOOPE .bb_main.4 
JMP .bb_main.5 
.bb_main.4:
AND RBX, 0b1111111111111 # instrumentation
SBB DX, word ptr [R14 + RBX] 
DEC AX 
CMOVNLE DI, BX 
MOVSX EDX, BL 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RDI], RDX 
AND RBX, 0b1111111111111 # instrumentation
LOCK DEC word ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RDI], EAX 
NEG DIL 
SUB BL, 69 
SBB AL, 75 
CMOVL AX, SI 
JMP .bb_main.5 
.bb_main.5:
AND RAX, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSR RAX, qword ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
