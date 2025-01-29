.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RSI], 1 # instrumentation
AND DX, word ptr [R14 + RSI] # instrumentation
SHR DX, 1 # instrumentation
DIV word ptr [R14 + RSI] 
OR ESI, -82 
AND CL, CL 
OR RDX, 0b1000000000000000000000000000000 # instrumentation
BSR RSI, RDX 
TEST DL, DL 
CMOVLE ESI, EDX 
TEST DL, CL 
CMOVS BX, SI 
AND RBX, 0b1111111111111 # instrumentation
LOCK DEC qword ptr [R14 + RBX] 
SBB AX, 19041 
OR RSI, 0b1000000000000000000000000000000 # instrumentation
BSF RDX, RSI 
AND RDI, 0b1111111111111 # instrumentation
ADC EDX, dword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
CMOVB AX, word ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
LOCK XOR word ptr [R14 + RSI], -76 
OR RAX, -1175722165 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RCX], 64 
OR BL, CL 
ADC AX, -29696 
SUB RSI, 18 
AND RSI, 0b1111111111111 # instrumentation
CMPXCHG byte ptr [R14 + RSI], CL 
JNL .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
CMP RAX, -602817717 
AND RBX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RBX], 79 
XADD CX, CX 
MOV DL, BL 
AND RCX, 0b1111111111111 # instrumentation
SETNS byte ptr [R14 + RCX] 
SUB EAX, 1870537591 
CMOVZ BX, DI 
AND RBX, 0b1111111111111 # instrumentation
CMOVLE RCX, qword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RDX], DI 
CMPXCHG BX, SI 
CMP EBX, -9 
JNS .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
ADD DIL, 104 # instrumentation
CMOVNO SI, DX 
SETNP DL 
AND EAX, -564934234 
TEST DX, 18427 
CMOVLE EDX, EDX 
SBB EBX, ESI 
AND RDI, 0b1111111111111 # instrumentation
ADC RDI, qword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
LOCK INC qword ptr [R14 + RBX] 
INC RAX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
