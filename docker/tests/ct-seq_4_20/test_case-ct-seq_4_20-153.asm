.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RSI], EAX 
AND RBX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RBX], -34 
CWD  
AND RDX, 0b1111111111111 # instrumentation
CMOVB SI, word ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RBX], DI 
JLE .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
IMUL EBX, dword ptr [R14 + RDI] 
IMUL ECX 
AND RDI, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RDI], -27 
ADD DX, AX 
JMP .bb_main.2 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
SBB SIL, byte ptr [R14 + RDX] 
CMP EBX, ECX 
SUB RCX, 66 
AND RAX, 0b1111111111111 # instrumentation
IMUL EAX, dword ptr [R14 + RAX], 84 
ADD DIL, -82 # instrumentation
CMOVL RAX, RAX 
CMOVNZ EBX, ESI 
OR EBX, 1 # instrumentation
AND EDX, EBX # instrumentation
SHR EDX, 1 # instrumentation
DIV EBX 
JMP .bb_main.3 
.bb_main.3:
AND RDX, 0b1111111111111 # instrumentation
ADD DI, word ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK INC qword ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RDX], BL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
