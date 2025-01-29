.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
CMOVZ RDX, qword ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RAX], DL 
AND RCX, 0b1111111111111 # instrumentation
IMUL RDI, qword ptr [R14 + RCX] 
XCHG BL, SIL 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RCX], EBX 
AND RDI, 0b1111111111111 # instrumentation
LOCK DEC word ptr [R14 + RDI] 
JNL .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RDX], -24 
CMOVS RCX, RBX 
LOOPE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
ADD SIL, 121 # instrumentation
CMOVLE RDI, RBX 
AND RDI, 0b1111111111111 # instrumentation
IMUL RAX, qword ptr [R14 + RDI], 118 
AND RDI, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RDI], -97 
AND RBX, 0b1111111111111 # instrumentation
CMOVB RBX, qword ptr [R14 + RBX] 
CMOVNP EAX, EDX 
AND RDX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDX], 0b1000000000000000000000000000000 # instrumentation
BSR RAX, qword ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
ADD DL, byte ptr [R14 + RBX] 
JMP .bb_main.3 
.bb_main.3:
CMP EAX, 433768133 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RDI], RSI 
CMOVS RAX, RSI 
JMP .bb_main.4 
.bb_main.4:
AND RSI, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RSI], -57 
AND RSI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RSI], DX 
AND RDI, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RDI], 36 
OR EBX, 1 # instrumentation
AND EDX, EBX # instrumentation
SHR EDX, 1 # instrumentation
DIV EBX 
AND RAX, 0b1111111111111 # instrumentation
CMOVNL AX, word ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDI], DI 
AND RSI, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RSI], EDX 
JMP .bb_main.5 
.bb_main.5:
AND RAX, 0b1111111111111 # instrumentation
LOCK INC dword ptr [R14 + RAX] 
SBB RAX, -2053782455 
ADD SIL, -121 
NEG AX 
AND RDX, 0b1111111111111 # instrumentation
INC word ptr [R14 + RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
