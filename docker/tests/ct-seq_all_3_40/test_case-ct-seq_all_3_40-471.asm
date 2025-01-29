.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
LOCK XADD byte ptr [R14 + RCX], DIL 
ADC BX, -62 
CDQ  
AND RBX, 0b1111111111111 # instrumentation
ADD RAX, qword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
SETLE byte ptr [R14 + RAX] 
ADD EAX, -629329477 
AND RAX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RAX], RCX 
CMOVLE AX, SI 
SETNP DL 
AND RSI, 0b1111111111111 # instrumentation
XADD dword ptr [R14 + RSI], EAX 
CMOVNL CX, AX 
TEST DI, BX 
AND BX, 78 
CMOVNS EAX, EDX 
NEG EAX 
CMOVBE EAX, EDX 
JZ .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD SIL, -84 # instrumentation
DEC SIL 
SETB DL 
AND RDI, 0b1111111111111 # instrumentation
IMUL SI, word ptr [R14 + RDI], 46 
AND RDX, 0b1111111111111 # instrumentation
MUL qword ptr [R14 + RDX] 
NOT EBX 
LEA RBX, qword ptr [RDI + RBX + 13116] 
AND RSI, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RCX], 89 
MOVSX EDX, DX 
SETP BL 
SETNS BL 
JMP .bb_main.2 
.bb_main.2:
CLD  # instrumentation
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RDX], -17 
SBB EAX, -157303360 
OR DI, SI 
AND RSI, 0b1111111111111 # instrumentation
AND dword ptr [R14 + RSI], -56 
CMOVNLE RDI, RDI 
AND RAX, 0b1111111111111 # instrumentation
SETNZ byte ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
TEST word ptr [R14 + RDI], DX 
AND RDI, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RDI], -53 
MOV CX, 921 
AND RDX, 0b1111111111111 # instrumentation
CMOVNL SI, word ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNS RBX, qword ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
STOSB  
AND RAX, 0b1111111111111 # instrumentation
LOCK OR word ptr [R14 + RAX], -57 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
