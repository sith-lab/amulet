.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RSI], 35 
CBW  
AND RDX, 0b1111111111111 # instrumentation
XADD dword ptr [R14 + RDX], ESI 
CMOVNP DI, AX 
AND CL, 16 
SETNB BL 
XOR BL, -79 
MOVSX RSI, CL 
DEC AX 
AND RCX, 0b1111111111111 # instrumentation
CMOVBE ESI, dword ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
AND byte ptr [R14 + RBX], BL 
TEST EAX, -1195034861 
XADD AL, DL 
JLE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
XOR ECX, EBX 
CMOVNZ RCX, RBX 
OR DI, -31 
NOT SIL 
AND RSI, 0b1111111111111 # instrumentation
LOCK AND word ptr [R14 + RSI], DI 
CMOVNO BX, AX 
ADC AL, -7 
AND RDX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDX], EAX 
XOR SIL, -82 
AND BL, SIL 
CMOVNS RSI, RAX 
AND RAX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RAX], EDI 
JNL .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
ADD EAX, 511678642 
AND RAX, 0b1111111111111 # instrumentation
CMOVP RCX, qword ptr [R14 + RAX] 
OR DL, -7 
SBB RAX, RDI 
SETBE AL 
XCHG BX, AX 
CMOVB DI, CX 
CMOVP RAX, RBX 
SETL BL 
AND RCX, 0b1111111111111 # instrumentation
AND byte ptr [R14 + RCX], SIL 
AND RDI, 0b1111111111111 # instrumentation
AND DI, word ptr [R14 + RDI] 
CMOVL EAX, EDX 
XOR RSI, RDI 
BSWAP ECX 
ADD ECX, ESI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
