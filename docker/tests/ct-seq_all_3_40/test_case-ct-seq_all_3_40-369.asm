.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, -14 # instrumentation
SAHF  
CMOVO EDI, EAX 
XADD EDX, ESI 
ADD EAX, -1991834288 
AND RDI, 0b1111111111111 # instrumentation
CMOVS RBX, qword ptr [R14 + RDI] 
NOT AL 
SETNB BL 
CMP EAX, -1993933274 
AND RSI, 0b1111111111111 # instrumentation
MUL word ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNO RDX, qword ptr [R14 + RSI] 
CMP CX, BX 
AND RAX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RAX], BL 
CMPXCHG DL, BL 
SETNBE CL 
MOVZX ESI, BL 
AND RSI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RSI], 16 
AND RDI, 0b1111111111111 # instrumentation
XOR RAX, qword ptr [R14 + RDI] 
JNS .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
ADD SIL, 16 # instrumentation
SETZ AL 
CMOVNBE BX, CX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNS DX, word ptr [R14 + RDX] 
CMOVLE RBX, RDI 
AND RCX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RCX], 23056 
AND RDI, 0b1111111111111 # instrumentation
DEC qword ptr [R14 + RDI] 
CMP AX, 12806 
AND RBX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RBX], -10 
AND RCX, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RCX], RDX 
JMP .bb_main.2 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
CMOVNBE EAX, dword ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RDI], BL 
AND RDI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDI], -96 
AND RDX, 0b1111111111111 # instrumentation
CMOVL RAX, qword ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNB ECX, dword ptr [R14 + RAX] 
CMP ESI, 14 
AND RDX, 0b1111111111111 # instrumentation
DEC qword ptr [R14 + RDX] 
SBB EDX, 119 
SUB ESI, 41 
XCHG DL, DIL 
AND RCX, 0b1111111111111 # instrumentation
ADC ESI, dword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK AND byte ptr [R14 + RDX], 39 
AND ESI, 57 
XCHG DIL, AL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
