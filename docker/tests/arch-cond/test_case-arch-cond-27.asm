.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD EBX, 91 
AND RCX, 0b1111111111111 # instrumentation
CMOVL RDX, qword ptr [R14 + RCX] 
NOT EDI 
AND RDI, 0b1111111111111 # instrumentation
CMOVLE RCX, qword ptr [R14 + RDI] 
SUB AX, 24665 
AND RSI, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RSI], BL 
CMOVO BX, CX 
AND RDI, 0b1111111111111 # instrumentation
AND dword ptr [R14 + RDI], EDI 
SETLE AL 
AND RAX, 0b1111111111111 # instrumentation
MOVSX DX, byte ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RAX], AL 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RDX], AX 
JNP .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
INC RAX 
AND RDX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RDX], RDI 
CBW  
CMOVNLE DI, CX 
XOR ESI, EBX 
SBB RAX, -1145406173 
CMOVNB AX, DX 
AND EBX, EBX 
OR CX, AX 
AND RCX, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RCX] 
XOR AX, -23456 
ADC DL, BL 
SETNS SIL 
AND RSI, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RSI], -89 
LEA RCX, qword ptr [RDX + RDI + 24642] 
JRCXZ .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
ADD EBX, dword ptr [R14 + RCX] 
MUL EDI 
ADD DIL, 9 # instrumentation
CMOVNL RBX, RCX 
CMP CX, BX 
AND RSI, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RSI], -96 
ADC DL, -78 
AND RAX, 14665330 
SUB RDI, RSI 
MOVZX ESI, DI 
CMP ECX, EDX 
CWD  
NEG DL 
AND RAX, 0b1111111111111 # instrumentation
LOCK CMPXCHG word ptr [R14 + RAX], BX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
