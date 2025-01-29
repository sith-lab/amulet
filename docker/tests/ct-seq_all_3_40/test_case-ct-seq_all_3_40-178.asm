.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, -49 # instrumentation
CMOVNBE EDX, EDI 
CMOVZ EDI, EDI 
MOV RDX, RCX 
CMOVNO RDX, RSI 
AND RDI, 0b1111111111111 # instrumentation
CMOVZ DX, word ptr [R14 + RDI] 
XCHG RDI, RAX 
SETBE DL 
AND RBX, 0b1111111111111 # instrumentation
XOR ESI, dword ptr [R14 + RBX] 
MOVZX ECX, DX 
AND RBX, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RBX], SIL 
CMOVNLE RAX, RCX 
ADC CL, DIL 
SUB AX, 10422 
JNZ .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
LOCK AND qword ptr [R14 + RSI], RDI 
ADC AL, 42 
AND RSI, 0b1111111111111 # instrumentation
CMOVNP DX, word ptr [R14 + RSI] 
INC BL 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RCX], -1 
CMOVNL ESI, ECX 
CMOVNB RBX, RBX 
INC RDI 
CMOVNLE SI, SI 
AND SI, SI 
CMP EDX, EDI 
JNB .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
TEST CL, DL 
AND RCX, 0b1111111111111 # instrumentation
ADD RCX, qword ptr [R14 + RCX] 
DEC RAX 
ADC RCX, RCX 
CMP EAX, -55 
AND RDI, 0b1111111111111 # instrumentation
SETNZ byte ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RAX], BL 
CMOVO SI, BX 
OR DI, 39 
AND RAX, 0b1111111111111 # instrumentation
SETLE byte ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RAX], 0b1000000000000000000000000000000 # instrumentation
BSR RAX, qword ptr [R14 + RAX] 
ADD SIL, -1 # instrumentation
SBB DX, DX 
SETNBE AL 
CMP AX, -17877 
AND RBX, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RBX], CL 
SBB ESI, -126 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
