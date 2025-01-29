.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, 126 # instrumentation
SETNZ AL 
AND RAX, 0b1111111111111 # instrumentation
AND byte ptr [R14 + RAX], 25 
AND RCX, 0b1111111111111 # instrumentation
LOCK XOR qword ptr [R14 + RCX], 26 
CMP SI, 53 
AND RSI, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RSI], CL 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RDI], BL 
JNS .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
CMP AX, -23707 
CMOVNB AX, SI 
AND RDX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RDX], 40 
AND SIL, -5 
CMOVNP RBX, RSI 
SETS BL 
OR ECX, 0b1000000000000000000000000000000 # instrumentation
BSF EDX, ECX 
ADD SIL, -89 # instrumentation
SETNZ CL 
SBB CL, DL 
JMP .bb_main.2 
.bb_main.2:
CMPXCHG BL, BL 
LEA DX, qword ptr [RDX + RAX + 44989] 
AND RAX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RAX], 0b1000000000000000 # instrumentation
BSR DX, word ptr [R14 + RAX] 
XADD AX, DX 
SBB EBX, ECX 
AND RDI, 0b1111111111111 # instrumentation
XOR RCX, qword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RBX], SI 
SETNS DL 
IMUL BL 
ADD DIL, 126 # instrumentation
SETNZ AL 
JBE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
SUB AL, 54 
CMOVO EBX, ECX 
AND RCX, 0b1111111111111 # instrumentation
INC dword ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVS RCX, qword ptr [R14 + RBX] 
OR DI, 37 
AND RDX, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RDX], RSI 
OR RAX, 279132005 
XOR AL, 116 
JMP .bb_main.4 
.bb_main.4:
CLD  # instrumentation
AND RDI, 0b1111111111111 # instrumentation
CMOVNO AX, word ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
CMPSW  
SBB SIL, -70 
AND RDX, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RDX], DI 
AND RDX, 0b1111111111111 # instrumentation
IMUL DI, word ptr [R14 + RDX], 58 
OR CX, 1 # instrumentation
AND DX, CX # instrumentation
SHR DX, 1 # instrumentation
DIV CX 
AND RBX, 0b1111111111111 # instrumentation
LOCK XOR dword ptr [R14 + RBX], EBX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
