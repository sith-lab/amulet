.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MUL RSI 
AND RCX, -98 
AND RAX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RAX], DL 
IMUL ESI, ECX 
CMOVB EDX, EBX 
MOVSX ECX, CX 
CMP RDX, 51 
AND RDX, 0b1111111111111 # instrumentation
LOCK INC qword ptr [R14 + RDX] 
SETNO BL 
AND RDI, 0b1111111111111 # instrumentation
CMOVNZ RCX, qword ptr [R14 + RDI] 
XCHG CX, DX 
AND RSI, 0b1111111111111 # instrumentation
CMOVNBE RCX, qword ptr [R14 + RSI] 
SBB AL, AL 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RDX], EBX 
CMOVNZ SI, DX 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RCX], -1 
AND RDX, 0b1111111111111 # instrumentation
ADD RBX, qword ptr [R14 + RDX] 
JNS .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
TEST CX, CX 
IMUL CX, DI 
AND RCX, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RCX], CX 
AND RAX, 0b1111111111111 # instrumentation
MUL qword ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK XOR dword ptr [R14 + RDI], 70 
ADD CX, 0 
SBB DL, DL 
SETNL BL 
AND RDI, 0b1111111111111 # instrumentation
CMP EBX, dword ptr [R14 + RDI] 
JL .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
XOR word ptr [R14 + RAX], DI 
BSWAP ESI 
CMOVNP CX, DI 
AND RCX, 0b1111111111111 # instrumentation
LOCK XOR qword ptr [R14 + RCX], RDX 
AND RAX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RAX], 0b1000000000000000000000000000000 # instrumentation
BSR RAX, qword ptr [R14 + RAX] 
AND AX, 29601 
SETNBE BL 
AND DX, -54 
SUB ECX, -35 
CMOVO EAX, EDI 
AND RBX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RBX], AL 
AND AL, DL 
ADD AX, -15584 
AND SI, DI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
