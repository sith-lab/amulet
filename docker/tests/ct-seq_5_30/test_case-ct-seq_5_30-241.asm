.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RSI], 106 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RAX], CL 
AND RBX, 0b1111111111111 # instrumentation
IMUL dword ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RSI], SI 
ADD DL, AL 
JL .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
CMOVNL ECX, dword ptr [R14 + RAX] 
CWD  
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RCX], SI 
OR RDI, 0b1000000000000000000000000000000 # instrumentation
BSR RCX, RDI 
AND RDX, 0b1111111111111 # instrumentation
CMP AL, byte ptr [R14 + RDX] 
ADC RAX, 883243113 
OR BL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV BL 
JMP .bb_main.2 
.bb_main.2:
ADD DIL, -114 # instrumentation
CMOVBE CX, SI 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RDX], RAX 
OR SI, 1 # instrumentation
AND DX, SI # instrumentation
SHR DX, 1 # instrumentation
DIV SI 
AND RAX, 0b1111111111111 # instrumentation
CMOVNP AX, word ptr [R14 + RAX] 
LOOP .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RDI], 104 
ADC RCX, RCX 
CMOVO SI, DX 
AND RDI, 0b1111111111111 # instrumentation
SBB RDI, qword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
CMOVP RDX, qword ptr [R14 + RDI] 
IMUL EAX 
AND RDI, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDI], BL 
AND RBX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RBX], BL 
AND RCX, 0b1111111111111 # instrumentation
ADD RDI, qword ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVO RAX, qword ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RCX], RBX 
JNBE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
ADD SIL, -112 # instrumentation
MOVZX RDX, BX 
CMOVNL RCX, RCX 
AND RDI, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RDI], EAX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
