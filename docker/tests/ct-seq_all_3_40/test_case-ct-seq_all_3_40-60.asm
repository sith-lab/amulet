.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MUL AL 
ADD DIL, 78 # instrumentation
CMOVB CX, DX 
CMOVNS AX, AX 
OR CX, SI 
AND BL, AL 
AND RCX, 0b1111111111111 # instrumentation
XADD byte ptr [R14 + RCX], DL 
JNB .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
CMPXCHG dword ptr [R14 + RSI], EDI 
AND RBX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RBX], AL 
AND RDX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RDX], AL 
AND RCX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RCX], BL 
AND RAX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RAX], -1826853841 
CMPXCHG BL, DL 
AND RDI, 0b1111111111111 # instrumentation
CMOVLE ECX, dword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
INC word ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
IMUL ECX, dword ptr [R14 + RDI], -106 
ADD EAX, 783008534 
XCHG ECX, EAX 
AND AL, 48 
SETNBE CL 
SBB DX, DI 
MOVSX EDX, DI 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RCX], 122 
CMP BL, BL 
SBB SI, 78 
TEST EDX, 287407013 
JNS .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
CMOVLE RDX, qword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
CMP CL, byte ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNZ RDX, qword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
LOCK AND byte ptr [R14 + RCX], -46 
AND RDI, 0b1111111111111 # instrumentation
CMOVZ ECX, dword ptr [R14 + RDI] 
MUL ESI 
AND RDX, 0b1111111111111 # instrumentation
MOVSX RSI, word ptr [R14 + RDX] 
DEC AX 
TEST AL, 6 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RSI], DX 
AND RSI, 0b1111111111111 # instrumentation
IMUL word ptr [R14 + RSI] 
ADD SIL, -66 # instrumentation
CMOVP EAX, ESI 
AND RDI, 0b1111111111111 # instrumentation
ADC BX, word ptr [R14 + RDI] 
TEST AL, 70 
CMOVNZ CX, AX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
