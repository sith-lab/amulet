.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, 100 
ADC EDI, EDI 
SBB RAX, 1843597057 
SUB EBX, 126 
SBB EDX, EAX 
TEST DI, 19106 
DEC DIL 
JL .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
INC CX 
INC BL 
AND RBX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RBX], DL 
JMP .bb_main.2 
.bb_main.2:
ADD DIL, -3 # instrumentation
SETS BL 
AND RBX, 0b1111111111111 # instrumentation
MOVZX RAX, byte ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RSI], AL 
XADD AL, AL 
SBB EBX, EAX 
CMOVP AX, DI 
INC AL 
OR DX, DI 
AND BL, AL 
AND RAX, 0b1111111111111 # instrumentation
CMOVO EDX, dword ptr [R14 + RAX] 
XOR AL, -108 
JNZ .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RBX], CL 
SETZ SIL 
AND RBX, 0b1111111111111 # instrumentation
MOVZX AX, byte ptr [R14 + RBX] 
SUB AL, -16 
AND RBX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RBX], CL 
SETNS CL 
AND RDX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RDX], 80 
XOR BL, AL 
AND RCX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RCX], BL 
AND RAX, 0b1111111111111 # instrumentation
CMOVNLE SI, word ptr [R14 + RAX] 
MOVSX RDX, BX 
OR DL, -52 
JMP .bb_main.4 
.bb_main.4:
AND RDX, 0b1111111111111 # instrumentation
SETNO byte ptr [R14 + RDX] 
MOV AX, -8825 
AND RSI, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RSI], CX 
CMOVNL RCX, RAX 
NOT RBX 
TEST RAX, RDI 
CMOVS ECX, ESI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
