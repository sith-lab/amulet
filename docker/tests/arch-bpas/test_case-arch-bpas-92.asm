.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
XCHG EBX, EAX 
OR RSI, 0b1000000000000000000000000000000 # instrumentation
BSF RDI, RSI 
AND RDX, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RDX], RDI 
AND RBX, 0b1111111111111 # instrumentation
LOCK OR word ptr [R14 + RBX], -5 
SETNS DIL 
SETNLE DL 
AND RBX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RBX], -77 
ADC RCX, RSI 
DEC RAX 
AND RCX, 0b1111111111111 # instrumentation
AND byte ptr [R14 + RCX], AL 
JL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD DIL, -118 # instrumentation
SETBE CL 
CMOVNZ DX, SI 
AND RSI, 0b1111111111111 # instrumentation
NOT byte ptr [R14 + RSI] 
JLE .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
CMOVBE ESI, dword ptr [R14 + RDI] 
SBB EBX, ECX 
XOR SIL, -37 
AND RSI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RSI], 1142633342 
CMOVNLE ESI, EDI 
AND DL, DL 
CMPXCHG RDX, RAX 
AND RDI, 0b1111111111111 # instrumentation
SBB ESI, dword ptr [R14 + RDI] 
XADD AL, BL 
AND RAX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RAX], 102 
AND RSI, 0b1111111111111 # instrumentation
ADD EDI, dword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
SBB RDX, qword ptr [R14 + RDX] 
MUL RDI 
MUL CL 
ADD RAX, 9 
JLE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
ADD SIL, -58 # instrumentation
CMOVNS EBX, ESI 
SUB RSI, 63 
MOVSX CX, DL 
AND RBX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RBX], ESI 
INC EAX 
AND RDX, 0b1111111111111 # instrumentation
MOVSX RDI, word ptr [R14 + RDX] 
JBE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
ADD DIL, -20 # instrumentation
STD  
CMOVL AX, AX 
AND RAX, 0b1111111111111 # instrumentation
SBB ESI, dword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
DEC word ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
AND SIL, byte ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
MUL dword ptr [R14 + RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
