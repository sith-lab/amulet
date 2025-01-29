.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, -33 # instrumentation
SETNZ BL 
SETLE CL 
AND RCX, 0b1111111111111 # instrumentation
CMP EAX, dword ptr [R14 + RCX] 
SETNLE AL 
OR EAX, -1223875913 
XCHG EBX, EAX 
ADC BX, 49 
XOR EBX, EBX 
XCHG BL, BL 
OR ECX, 80 
XOR DL, CL 
NOT RCX 
OR DL, BL 
INC BL 
AND RBX, 0b1111111111111 # instrumentation
TEST word ptr [R14 + RBX], -4806 
MOV RSI, RSI 
LOOPNE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
CLD  # instrumentation
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
LODSB  
OR BL, AL 
OR EBX, 0b1000000000000000000000000000000 # instrumentation
BSR ECX, EBX 
XADD RDI, RAX 
AND RAX, 0b1111111111111 # instrumentation
NOT qword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK XOR dword ptr [R14 + RDX], -55 
SETNS AL 
ADC DL, -30 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RSI], 50 
JMP .bb_main.2 
.bb_main.2:
XADD EDX, EDX 
CDQ  
OR RBX, 0b1000000000000000000000000000000 # instrumentation
BSF RCX, RBX 
AND RAX, -1498103334 
SUB RAX, -28 
DEC AL 
AND RAX, 0b1111111111111 # instrumentation
ADC RSI, qword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RDX], 63 
AND RCX, 0b1111111111111 # instrumentation
CMOVNL ESI, dword ptr [R14 + RCX] 
OR BL, 4 
CMP AX, -114 
SBB EAX, 755722974 
CLD  
AND RBX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RBX], 1 # instrumentation
MOV AX, 1 # instrumentation
DIV byte ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
