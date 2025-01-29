.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MOVZX ESI, SIL 
CLD  
AND RDX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RDX], 1 # instrumentation
AND RDX, 0b1111111111111 # instrumentation
LOCK INC qword ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDI], -2107827932 
AND RCX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RCX], 59 
AND RSI, 0b1111111111111 # instrumentation
IMUL qword ptr [R14 + RSI] 
ADD SIL, -5 # instrumentation
CMOVS RSI, RDX 
MUL RDX 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RAX], DI 
JNP .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RDI], EDX 
AND RCX, 0b1111111111111 # instrumentation
IMUL RBX, qword ptr [R14 + RCX], 67 
AND RBX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RBX], AL 
OR CX, 1 # instrumentation
AND DX, CX # instrumentation
SHR DX, 1 # instrumentation
DIV CX 
AND RSI, 0b1111111111111 # instrumentation
MOVSX RDX, byte ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RDI], RSI 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RBX], ESI 
JNBE .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDI], RCX 
CMOVS EBX, ESI 
AND RSI, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RSI], CX 
JMP .bb_main.3 
.bb_main.3:
ADD SIL, -6 # instrumentation
CMOVZ RDX, RCX 
DEC RAX 
AND RDX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDX], DL 
OR RBX, 0b1000000000000000000000000000000 # instrumentation
BSF RBX, RBX 
ADD SIL, 24 # instrumentation
CMOVNP CX, AX 
CMOVNS EBX, EAX 
AND RAX, 0b1111111111111 # instrumentation
LOCK DEC word ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RAX], EBX 
JMP .bb_main.4 
.bb_main.4:
MOV SIL, -58 
AND RDI, 0b1111111111111 # instrumentation
CMOVBE EBX, dword ptr [R14 + RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
