.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, -53 # instrumentation
MOV CX, DX 
ADC BL, AL 
MUL DL 
AND RCX, 0b1111111111111 # instrumentation
MOV BX, word ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNP RBX, qword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RDI], RAX 
MOVSX BX, BL 
CMOVNP CX, CX 
JMP .bb_main.1 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RCX], EBX 
CMOVNL DI, AX 
ADC BL, -104 
CMOVBE ESI, ESI 
MUL BL 
JRCXZ .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
ADD EBX, EDI 
AND RDX, 0b1111111111111 # instrumentation
CMOVNBE RSI, qword ptr [R14 + RDX] 
OR RDX, 0b1000000000000000000000000000000 # instrumentation
BSR RSI, RDX 
CMOVZ RSI, RDI 
AND RSI, 0b1111111111111 # instrumentation
IMUL qword ptr [R14 + RSI] 
OR BL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV BL 
ADD DIL, 91 # instrumentation
JL .bb_main.3 
JMP .bb_main.5 
.bb_main.3:
AND RDI, 0b1111111111111 # instrumentation
DEC word ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
MOVSX BX, byte ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RAX], BX 
ADC AX, -6350 
AND RDX, 0b1111111111111 # instrumentation
LOCK DEC dword ptr [R14 + RDX] 
JNP .bb_main.4 
JMP .bb_main.5 
.bb_main.4:
AND RDX, 0b1111111111111 # instrumentation
CMOVNP EBX, dword ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RAX], -30 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RDX], BX 
JS .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
AND RCX, 0b1111111111111 # instrumentation
CMOVO CX, word ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNL RBX, qword ptr [R14 + RDX] 
MOVSX EDX, CL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
