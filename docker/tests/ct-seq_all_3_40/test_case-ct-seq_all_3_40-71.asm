.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, -82 # instrumentation
CMOVNS EDX, ESI 
CMOVO AX, DX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNZ ECX, dword ptr [R14 + RDX] 
CMOVNS EBX, EBX 
AND RSI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RSI], ECX 
AND RDI, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RDI], AL 
SUB ESI, -21 
AND RDI, 0b1111111111111 # instrumentation
CMOVNO RDI, qword ptr [R14 + RDI] 
XADD AL, DL 
AND RAX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RAX], EBX 
CMOVNB ESI, EDI 
AND RCX, 0b1111111111111 # instrumentation
CMOVO RDX, qword ptr [R14 + RCX] 
LOOP .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
LOCK NOT qword ptr [R14 + RAX] 
OR EBX, 0b1000000000000000000000000000000 # instrumentation
BSR EDI, EBX 
ADD DIL, -73 # instrumentation
CMOVP ESI, EDI 
SUB AL, 84 
AND RDX, 0b1111111111111 # instrumentation
LOCK DEC qword ptr [R14 + RDX] 
NOP  
AND RSI, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RSI], AL 
INC CL 
AND RDX, 0b1111111111111 # instrumentation
LOCK CMPXCHG byte ptr [R14 + RDX], CL 
XOR ESI, EDX 
OR AL, DIL 
JNP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RAX], SIL 
CMOVNS EBX, EDI 
DEC BL 
IMUL EBX, ESI, 9 
SUB CX, 74 
AND RBX, 0b1111111111111 # instrumentation
LOCK NOT dword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
AND RDX, qword ptr [R14 + RAX] 
SETO BL 
AND RDX, 0b1111111111111 # instrumentation
ADD DI, word ptr [R14 + RDX] 
MUL EDI 
ADD SIL, -117 # instrumentation
CMOVP RBX, RDX 
AND RDI, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDX], -8421 
AND RAX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RAX], 94 
XOR EAX, 58 
SETNZ CL 
XOR EDI, ECX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
