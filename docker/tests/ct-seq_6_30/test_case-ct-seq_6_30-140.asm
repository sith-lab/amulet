.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RAX], 115 
AND RDX, 0b1111111111111 # instrumentation
MUL word ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RCX], 1 # instrumentation
AND DX, word ptr [R14 + RCX] # instrumentation
SHR DX, 1 # instrumentation
DIV word ptr [R14 + RCX] 
ADD SIL, -35 # instrumentation
CMOVNP CX, CX 
JMP .bb_main.1 
.bb_main.1:
ADD DIL, -100 # instrumentation
XCHG AX, AX 
SBB DIL, 43 
MOV CL, CL 
SBB EDX, 33 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RAX], DI 
JS .bb_main.2 
JMP .bb_main.5 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
CMOVBE RCX, qword ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RDI], RSI 
INC DL 
AND RDI, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RDI], EDX 
JMP .bb_main.3 
.bb_main.3:
IMUL ECX, EAX, -18 
OR DX, 0b1000000000000000 # instrumentation
BSR BX, DX 
ADD DIL, 68 # instrumentation
CMOVNS RCX, RBX 
AND RSI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RSI], SIL 
AND RAX, 0b1111111111111 # instrumentation
CMOVLE RCX, qword ptr [R14 + RAX] 
CMOVL RDX, RDX 
CMOVNB DI, CX 
JMP .bb_main.4 
.bb_main.4:
AND RSI, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RSI], RCX 
AND RSI, 0b1111111111111 # instrumentation
MOVZX EDX, word ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
IMUL AX, word ptr [R14 + RAX], 80 
LOOP .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
SUB EBX, 16 
CMOVO DI, DX 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RAX], 58 
AND RDI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDI], DL 
AND RAX, 0b1111111111111 # instrumentation
SUB CL, byte ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
MOV CL, byte ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RDI], -124 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
