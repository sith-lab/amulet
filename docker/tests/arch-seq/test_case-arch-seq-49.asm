.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
CMOVNZ ESI, dword ptr [R14 + RDI] 
MUL RBX 
ADD SIL, 17 # instrumentation
CMOVP DI, BX 
LEA EAX, qword ptr [RDI] 
CMOVNBE EDX, ECX 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
CMOVNO RCX, qword ptr [R14 + RDI] 
IMUL EDX, EBX, 8 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RAX], BL 
AND RDX, 0b1111111111111 # instrumentation
LOCK XOR qword ptr [R14 + RDX], 38 
SETNB BL 
CMP SIL, -108 
XADD DL, BL 
CMP AL, -77 
SETBE AL 
AND RAX, 0b1111111111111 # instrumentation
CMOVNO CX, word ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVZ RDI, qword ptr [R14 + RDX] 
DEC CL 
JMP .bb_main.2 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RSI], -593116874 
AND RCX, 0b1111111111111 # instrumentation
CMOVNLE EAX, dword ptr [R14 + RCX] 
CMP ECX, -61 
CMOVNL EAX, EBX 
CMOVNLE ECX, EAX 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RBX], -108 
OR EBX, 81 
LEA DX, qword ptr [RDI + RBX + 44139] 
DEC CL 
SBB SI, 86 
AND EAX, 2037502175 
JRCXZ .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND DI, CX 
MOV DI, -10631 
ADC AX, DI 
OR DX, 0b1000000000000000 # instrumentation
BSR CX, DX 
AND RAX, 0b1111111111111 # instrumentation
CMP CX, word ptr [R14 + RAX] 
TEST AX, 11280 
AND RBX, 0b1111111111111 # instrumentation
LOCK XADD byte ptr [R14 + RBX], SIL 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RDI], DL 
AND RDI, 0b1111111111111 # instrumentation
LOCK NEG word ptr [R14 + RDI] 
SETP DL 
AND RBX, 0b1111111111111 # instrumentation
CMOVNL SI, word ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
XOR dword ptr [R14 + RAX], 25 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
