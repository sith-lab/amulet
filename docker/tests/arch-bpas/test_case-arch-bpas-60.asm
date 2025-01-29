.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, 34 # instrumentation
CMOVL ECX, ESI 
ADD EDI, 113 
AND RBX, 0b1111111111111 # instrumentation
TEST word ptr [R14 + RBX], AX 
XOR EDX, ECX 
SETB CL 
AND RBX, 0b1111111111111 # instrumentation
LOCK AND dword ptr [R14 + RBX], EBX 
TEST DIL, -46 
AND RSI, 0b1111111111111 # instrumentation
ADD AX, word ptr [R14 + RSI] 
OR AX, 25310 
CMOVNLE BX, DX 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RAX], -28 
CMOVLE EDI, EDI 
XOR EDI, 14 
CMP AX, -10629 
SETS BL 
ADD DIL, 116 
AND RCX, 0b1111111111111 # instrumentation
INC dword ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNLE AX, word ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RAX], 70 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RDI], BX 
XCHG DL, DL 
AND RDI, 0b1111111111111 # instrumentation
CMOVNZ CX, word ptr [R14 + RDI] 
LEA RBX, qword ptr [RDX + RSI + 33747] 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RDI], RCX 
JL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD SIL, -126 # instrumentation
CMOVNB EDI, EDI 
OR EDX, 1 # instrumentation
XCHG DIL, CL 
NOT EDI 
MOV EDX, -983291320 
AND RBX, 0b1111111111111 # instrumentation
IMUL byte ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RBX], AL 
CMOVBE ESI, EBX 
AND RDI, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RDI], RCX 
AND RAX, 0b1111111111111 # instrumentation
CMOVS BX, word ptr [R14 + RAX] 
OR AL, -91 
AND RBX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RBX], 0b1000000000000000000000000000000 # instrumentation
BSF RDX, qword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNL AX, word ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNBE EAX, dword ptr [R14 + RBX] 
CMPXCHG RCX, RDI 
SBB RSI, 100 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
