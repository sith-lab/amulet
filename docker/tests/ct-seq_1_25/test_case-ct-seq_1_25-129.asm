.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RAX], 0b1000000000000000000000000000000 # instrumentation
BSR RDI, qword ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RDI], BL 
ADD SI, DI 
ADC BL, DL 
AND RSI, 0b1111111111111 # instrumentation
IMUL EDI, dword ptr [R14 + RSI], 9 
ADD SIL, -128 # instrumentation
CMOVNLE CX, AX 
CMP EAX, 888311321 
CMP BL, AL 
AND RBX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RBX], -77 
ADD EAX, 557809752 
AND RCX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RCX], -1989987874 
CLC  
AND RCX, 0b1111111111111 # instrumentation
DEC dword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RDX], 77 
CMP DX, AX 
CMOVLE AX, DI 
AND RDI, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RDI] 
SBB DI, BX 
XCHG RAX, RCX 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RBX], 11 
AND RCX, 0b1111111111111 # instrumentation
CMOVZ EDX, dword ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RBX], 0b1000000000000000 # instrumentation
BSR DI, word ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVZ RDI, qword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
ADD DL, byte ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RDX], RSI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
