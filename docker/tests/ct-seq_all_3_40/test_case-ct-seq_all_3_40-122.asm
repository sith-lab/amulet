.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RAX], -25 
AND RDI, 0b1111111111111 # instrumentation
LOCK XOR word ptr [R14 + RDI], CX 
LEA AX, qword ptr [RCX] 
AND RDX, 0b1111111111111 # instrumentation
XADD byte ptr [R14 + RDX], CL 
AND RSI, 0b1111111111111 # instrumentation
CMP DL, byte ptr [R14 + RSI] 
CMP AX, -91 
AND RSI, 0b1111111111111 # instrumentation
SETNLE byte ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
TEST qword ptr [R14 + RDX], -1181728572 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RDX], EAX 
JMP .bb_main.1 
.bb_main.1:
ADD DIL, 38 # instrumentation
CMOVNLE BX, SI 
CMOVNS RCX, RDI 
IMUL BL 
ADD SIL, -119 # instrumentation
CMOVS EDI, ECX 
AND RSI, 0b1111111111111 # instrumentation
SETNZ byte ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
SETL byte ptr [R14 + RBX] 
CMOVS ESI, EAX 
TEST EDI, EDX 
CMOVNS RSI, RAX 
AND RCX, 0b1111111111111 # instrumentation
XADD byte ptr [R14 + RCX], AL 
NOT AL 
JNB .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
OR BX, 26 
AND RDI, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RDI], DL 
OR EDI, 0b1000000000000000000000000000000 # instrumentation
BSR EAX, EDI 
ADD EDI, 10 
AND RCX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RCX], RBX 
AND RCX, 0b1111111111111 # instrumentation
MOV EDI, dword ptr [R14 + RCX] 
CMP AL, 20 
AND RDI, 0b1111111111111 # instrumentation
AND RSI, qword ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
XOR word ptr [R14 + RAX], -96 
ADC ESI, -37 
CMOVZ ECX, EDX 
AND RAX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RAX], -79 
AND RSI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RSI], 0b1000000000000000 # instrumentation
BSR DX, word ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RSI], -125 
OR EDX, 0b1000000000000000000000000000000 # instrumentation
BSF EAX, EDX 
AND RBX, 0b1111111111111 # instrumentation
CMOVS RSI, qword ptr [R14 + RBX] 
SETL BL 
TEST AX, 17284 
CMOVP RBX, RAX 
SBB AL, 94 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
