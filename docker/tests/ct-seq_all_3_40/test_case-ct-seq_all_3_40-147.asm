.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, -81 # instrumentation
CMOVNP CX, SI 
AND RCX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RCX] 
TEST AX, -24628 
AND RSI, 0b1111111111111 # instrumentation
LOCK INC qword ptr [R14 + RSI] 
TEST ECX, ESI 
AND RDI, 0b1111111111111 # instrumentation
IMUL DI, word ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNP DI, word ptr [R14 + RDX] 
SETNBE AL 
CMP EDI, ESI 
AND RCX, 0b1111111111111 # instrumentation
INC word ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
MOV RDX, qword ptr [R14 + RSI] 
SUB EBX, ECX 
SUB BL, CL 
CMOVNP ESI, EBX 
CMOVNB ECX, EDX 
SBB AX, 96 
ADD DX, 87 
CMOVNL DI, BX 
JLE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
TEST BL, 126 
CBW  
CMP RSI, 96 
AND RDI, 0b1111111111111 # instrumentation
SETO byte ptr [R14 + RDI] 
TEST AL, 68 
XOR RAX, -375561833 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RAX], 3 
AND RDX, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RDX] 
NEG ESI 
SETNS CL 
ADC SI, SI 
JMP .bb_main.2 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RDI], -32 
CMOVLE DX, DI 
CLD  
AND EAX, 926228209 
AND RCX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RCX], DX 
XCHG BL, BL 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
SCASD  
STD  
MOV DX, 1339 
SBB AL, -96 
MOVZX ECX, AL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
