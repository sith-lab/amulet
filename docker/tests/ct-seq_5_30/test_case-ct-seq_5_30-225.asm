.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, 106 # instrumentation
ADC AX, -17732 
AND RSI, 0b1111111111111 # instrumentation
LOCK INC qword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
CMP DL, byte ptr [R14 + RAX] 
INC DIL 
CMOVBE EAX, EAX 
CMOVNB AX, AX 
AND RAX, 0b1111111111111 # instrumentation
CMOVNBE RCX, qword ptr [R14 + RAX] 
NEG DL 
AND RBX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RBX], RDI 
AND RSI, 0b1111111111111 # instrumentation
ADC EDX, dword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
CMOVZ ECX, dword ptr [R14 + RDX] 
JNLE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
OR CL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV CL 
AND RBX, 0b1111111111111 # instrumentation
ADD ESI, dword ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVBE DI, word ptr [R14 + RCX] 
JMP .bb_main.2 
.bb_main.2:
XCHG DIL, SIL 
AND RAX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RAX], SI 
ADD AX, 23352 
ADC SI, SI 
OR AX, 0b1000000000000000 # instrumentation
BSF DX, AX 
ADD SIL, -115 # instrumentation
CMOVNL RAX, RSI 
AND RCX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RCX], -12 
JBE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RCX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RCX], RDX 
AND RBX, 0b1111111111111 # instrumentation
CMOVNZ RSI, qword ptr [R14 + RBX] 
INC AL 
AND RCX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RCX], -86 
JNLE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RCX, 0b1111111111111 # instrumentation
CMOVNB CX, word ptr [R14 + RCX] 
SUB EBX, -108 
LEA ECX, qword ptr [RBX] 
AND RDI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDI], BL 
CMOVLE EAX, EDX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
