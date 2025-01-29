.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RAX], 0b1000000000000000000000000000000 # instrumentation
BSF RAX, qword ptr [R14 + RAX] 
ADD SIL, -47 # instrumentation
SBB CL, 8 
SETLE BL 
IMUL RCX, RDX 
AND RSI, 0b1111111111111 # instrumentation
CMOVNB EBX, dword ptr [R14 + RSI] 
XCHG BL, AL 
OR ESI, EBX 
AND RDI, 0b1111111111111 # instrumentation
LOCK INC word ptr [R14 + RDI] 
CMPXCHG SIL, AL 
ADD RAX, 195879562 
AND RCX, 0b1111111111111 # instrumentation
LOCK NOT qword ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVP RCX, qword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RAX], AL 
AND RAX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RAX], 81 
AND RDI, 0b1111111111111 # instrumentation
LOCK XOR dword ptr [R14 + RDI], -86 
AND RDX, 0b1111111111111 # instrumentation
SBB BX, word ptr [R14 + RDX] 
JBE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
OR DI, 0b1000000000000000 # instrumentation
BSR CX, DI 
AND RSI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RSI], 51 
AND RBX, 0b1111111111111 # instrumentation
LOCK NEG word ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RSI], ECX 
CMOVB EAX, ESI 
SETNZ BL 
OR RAX, -1740775687 
MOV EAX, -321929150 
CWD  
NOT ESI 
SBB AX, 106 
AND RAX, 0b1111111111111 # instrumentation
CMOVNBE EDI, dword ptr [R14 + RAX] 
CMOVNS AX, SI 
XOR AL, 13 
AND RDI, 6 
JMP .bb_main.2 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RDX], 75 
CMOVP ECX, EAX 
CMOVS SI, DX 
CMOVNO RCX, RSI 
OR DIL, -13 
AND RDI, 0b1111111111111 # instrumentation
AND dword ptr [R14 + RDI], 93 
TEST AX, 16941 
AND RCX, 0b1111111111111 # instrumentation
AND qword ptr [R14 + RCX], 84 
SUB AL, -23 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
