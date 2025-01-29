.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
CMOVBE BX, word ptr [R14 + RDX] 
NOT RSI 
CMOVNZ ESI, ESI 
DEC CX 
OR RDI, 0b1000000000000000000000000000000 # instrumentation
BSR RDI, RDI 
AND RDI, 0b1111111111111 # instrumentation
AND qword ptr [R14 + RDI], -48 
AND RAX, 0b1111111111111 # instrumentation
XOR word ptr [R14 + RAX], 118 
CMP AL, 80 
CMOVNP EDX, ESI 
TEST RSI, -1470181256 
CWDE  
SETNB CL 
AND RCX, 0b1111111111111 # instrumentation
IMUL EDI, dword ptr [R14 + RCX] 
DEC DL 
AND RAX, 0b1111111111111 # instrumentation
CMPXCHG dword ptr [R14 + RAX], ECX 
SUB SIL, -73 
SUB CX, 78 
CMPXCHG CL, DL 
CMOVP DI, DI 
SUB BL, 115 
JNS .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND DI, -65 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RDX], BL 
CMOVNO CX, DX 
XOR EAX, EDX 
OR RAX, -435977120 
MOVZX EAX, AL 
CMOVNB BX, AX 
AND RSI, 0b1111111111111 # instrumentation
CMOVNBE EAX, dword ptr [R14 + RSI] 
ADD DIL, DL 
ADD RAX, 614018488 
AND RAX, 0b1111111111111 # instrumentation
LOCK OR qword ptr [R14 + RAX], RSI 
AND RDI, 0b1111111111111 # instrumentation
LOCK CMPXCHG qword ptr [R14 + RDI], RDX 
IMUL EAX 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RCX], 66 
JMP .bb_main.2 
.bb_main.2:
OR RAX, -580775170 
XOR RBX, 114 
STD  
CMOVZ EDI, EBX 
AND RDI, 0b1111111111111 # instrumentation
SBB DIL, byte ptr [R14 + RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
