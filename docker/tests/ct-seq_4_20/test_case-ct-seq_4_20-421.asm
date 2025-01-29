.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RCX], ECX 
AND RCX, 0b1111111111111 # instrumentation
CMP DIL, byte ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
INC byte ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDX], -37 
ADC SIL, -4 
AND RBX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RBX], CL 
JO .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
MOV RSI, qword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RAX], 59 
AND RBX, 0b1111111111111 # instrumentation
SUB DL, byte ptr [R14 + RBX] 
JMP .bb_main.2 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
LOCK DEC byte ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
SBB AL, byte ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RDX], 67 
AND RBX, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RBX], DI 
JMP .bb_main.3 
.bb_main.3:
AND RDI, 0b1111111111111 # instrumentation
LOCK DEC word ptr [R14 + RDI] 
SUB DX, -41 
MOVSX RAX, AL 
CMP AX, 26310 
CMOVNL EBX, EBX 
AND RBX, 0b1111111111111 # instrumentation
MOV RSI, qword ptr [R14 + RBX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
