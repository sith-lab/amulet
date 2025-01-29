.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
MOVSX RCX, byte ptr [R14 + RDI] 
MUL AX 
AND RDX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RDX], AL 
CMOVNLE DI, CX 
JMP .bb_main.1 
.bb_main.1:
SUB RAX, -290976927 
AND RBX, 0b1111111111111 # instrumentation
ADC CL, byte ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNZ CX, word ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK INC word ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RCX], 23 
ADD AL, -6 
JNP .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
CMP AL, 44 
LOOPE .bb_main.3 
JMP .bb_main.5 
.bb_main.3:
AND RDI, 0b1111111111111 # instrumentation
CMP CX, word ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNP RCX, qword ptr [R14 + RAX] 
MOV BL, -11 
JMP .bb_main.4 
.bb_main.4:
ADD DL, 16 
BSWAP EBX 
AND RSI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RSI], RAX 
OR CX, 0b1000000000000000 # instrumentation
BSF BX, CX 
AND RSI, 0b1111111111111 # instrumentation
CMOVNZ EDI, dword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RDX], 37 
CMOVNO ESI, EBX 
AND RBX, 0b1111111111111 # instrumentation
MOVZX RCX, byte ptr [R14 + RBX] 
JNBE .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
ADD SIL, 13 # instrumentation
CMOVNO EAX, ECX 
SBB AL, -36 
AND RAX, 0b1111111111111 # instrumentation
CMOVBE DI, word ptr [R14 + RAX] 
MUL DL 
AND RSI, 0b1111111111111 # instrumentation
DEC dword ptr [R14 + RSI] 
CMP BL, CL 
ADD BL, BL 
AND RBX, 0b1111111111111 # instrumentation
SUB DI, word ptr [R14 + RBX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
