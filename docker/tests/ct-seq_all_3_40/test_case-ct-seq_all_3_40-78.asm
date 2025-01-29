.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, -102 # instrumentation
CMOVNL RDX, RDX 
TEST AL, AL 
AND RDI, 0b1111111111111 # instrumentation
LOCK NOT dword ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RSI], AX 
CMOVNL RAX, RAX 
AND RCX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RCX], AX 
ADC RAX, 1308784661 
ADD EAX, EDX 
CMOVZ ESI, EDX 
TEST EBX, -236460119 
AND RSI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RSI], AL 
SETNZ AL 
CMOVNB SI, CX 
JMP .bb_main.1 
.bb_main.1:
CMP RAX, -126 
SETB DL 
IMUL EBX 
AND RAX, 0b1111111111111 # instrumentation
LOCK CMPXCHG byte ptr [R14 + RAX], AL 
AND CX, CX 
AND RCX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RCX], 36 
CMOVNS RDX, RDI 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RDI], DL 
JS .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
OR SI, -95 
AND RAX, 0b1111111111111 # instrumentation
CMOVNL EDX, dword ptr [R14 + RAX] 
OR AL, 85 
CMOVL ECX, EDI 
TEST BL, AL 
CMOVNB DX, AX 
CMOVB AX, CX 
ADC EAX, -729259507 
SETP BL 
SETNB BL 
AND RSI, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RSI], -18 
AND RAX, 0b1111111111111 # instrumentation
SBB RBX, qword ptr [R14 + RAX] 
SUB DX, BX 
XOR RAX, -546418375 
AND RBX, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RBX], DL 
AND RSI, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RSI], -34 
ADD ECX, 99 
OR RAX, RCX 
XCHG BL, AL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
