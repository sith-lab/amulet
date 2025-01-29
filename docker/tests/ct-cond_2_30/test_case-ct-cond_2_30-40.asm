.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, 59 # instrumentation
CMOVNP BX, BX 
CMOVBE RDX, RDX 
AND RDI, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RDI], -38 
BSWAP RDX 
OR ECX, 0b1000000000000000000000000000000 # instrumentation
BSR EAX, ECX 
AND RSI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RSI], RDI 
AND RDI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDI], -20428 
CMC  
MOVSX DI, BL 
AND RCX, 0b1111111111111 # instrumentation
IMUL RDX, qword ptr [R14 + RCX], 34 
AND RSI, 0b1111111111111 # instrumentation
CMOVBE DX, word ptr [R14 + RSI] 
XCHG AL, DL 
DEC EAX 
CMOVZ ESI, EBX 
AND RSI, 0b1111111111111 # instrumentation
CMOVZ EDX, dword ptr [R14 + RSI] 
ADC EAX, 1452385767 
AND RAX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RAX], 87 
AND RCX, 0b1111111111111 # instrumentation
MOV DI, word ptr [R14 + RCX] 
SBB EAX, 1142859020 
AND RDX, 0b1111111111111 # instrumentation
SUB RDI, qword ptr [R14 + RDX] 
JL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RCX], AL 
CMOVNZ AX, DI 
AND RDX, 0b1111111111111 # instrumentation
MOVSX ESI, word ptr [R14 + RDX] 
MOVSX ESI, CX 
MOVZX BX, AL 
ADD RSI, 101 
AND RSI, 0b1111111111111 # instrumentation
MOVZX ESI, byte ptr [R14 + RSI] 
CMP AL, 94 
AND RBX, 0b1111111111111 # instrumentation
LOCK DEC dword ptr [R14 + RBX] 
CMOVNS SI, SI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
