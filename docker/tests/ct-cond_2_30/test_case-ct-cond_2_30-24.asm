.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, -46 # instrumentation
CMOVBE RAX, RDI 
MOV ESI, ESI 
AND RDX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RDX], 1 # instrumentation
CMOVNS CX, DI 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RAX], AX 
AND RCX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RCX], RBX 
CMOVNBE ESI, EAX 
CMOVNBE SI, AX 
OR CL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV CL 
AND RDX, 0b1111111111111 # instrumentation
SBB DIL, byte ptr [R14 + RDX] 
CMOVLE DX, BX 
AND RBX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RBX], EAX 
AND RDX, 0b1111111111111 # instrumentation
MOVSX RAX, word ptr [R14 + RDX] 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
CMOVNP DX, word ptr [R14 + RDX] 
SBB RDX, -34 
AND RDI, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RDI], 104 
XCHG ECX, EAX 
CDQ  
AND RBX, 0b1111111111111 # instrumentation
INC word ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RBX], 100 
CWD  
SBB DL, CL 
AND RDI, 0b1111111111111 # instrumentation
INC dword ptr [R14 + RDI] 
IMUL DI, CX, 0 
AND RBX, 0b1111111111111 # instrumentation
CMOVBE SI, word ptr [R14 + RBX] 
CMP RSI, 82 
SBB DL, BL 
AND RDI, 0b1111111111111 # instrumentation
DEC word ptr [R14 + RDI] 
CMOVLE SI, DX 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RSI], EBX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
