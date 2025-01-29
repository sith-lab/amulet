.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RSI], RDX 
TEST AX, 15745 
AND RSI, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RSI], DL 
MOVSX RBX, DL 
AND SIL, -127 
MOVSX EBX, DL 
CMOVLE DX, BX 
XOR ECX, ESI 
OR DIL, -7 
AND RSI, 0b1111111111111 # instrumentation
XADD byte ptr [R14 + RSI], DL 
CMOVNBE AX, DX 
CMPXCHG AL, AL 
MOV CL, -34 
CMOVNL RCX, RAX 
CMP ESI, EAX 
XCHG SIL, SIL 
CMOVL EAX, EDX 
ADD SIL, DIL 
SBB RAX, RBX 
SETNL SIL 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
CLD  # instrumentation
SUB AX, -17108 
IMUL EDX 
OR CL, CL 
XADD DI, DX 
INC RSI 
MUL RSI 
AND RAX, 0b1111111111111 # instrumentation
AND dword ptr [R14 + RAX], ESI 
AND RDX, 0b1111111111111 # instrumentation
SUB DI, word ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK AND byte ptr [R14 + RSI], 112 
AND RCX, 0b1111111111111 # instrumentation
CMOVNBE RBX, qword ptr [R14 + RCX] 
OR AX, -29322 
ADC EDX, 90 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
MOVSB  
MOV CL, BL 
XCHG ESI, EAX 
SBB DIL, -92 
SETLE CL 
AND RDX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDX], RCX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNS EDX, dword ptr [R14 + RDI] 
CMOVNB EDI, EBX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
