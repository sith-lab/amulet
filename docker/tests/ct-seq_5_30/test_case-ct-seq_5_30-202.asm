.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
INC CX 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RBX], EBX 
CMOVNP CX, DI 
CMP ECX, EDX 
ADD AX, DX 
AND RSI, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RSI], RCX 
AND RSI, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RSI], SI 
SUB BL, DL 
JMP .bb_main.1 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RAX], RDI 
JNBE .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
LOCK DEC byte ptr [R14 + RSI] 
CMP CL, 11 
AND RAX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RAX], RSI 
IMUL SI, DX 
OR BX, 1 # instrumentation
AND DX, BX # instrumentation
SHR DX, 1 # instrumentation
DIV BX 
ADD SIL, 59 # instrumentation
CMOVNZ EAX, ECX 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RSI], CL 
JZ .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
XCHG ESI, EAX 
DEC RDI 
DEC RDI 
AND RBX, 0b1111111111111 # instrumentation
CMOVNZ EAX, dword ptr [R14 + RBX] 
CMOVZ RBX, RDX 
AND RCX, 0b1111111111111 # instrumentation
SBB DL, byte ptr [R14 + RCX] 
JMP .bb_main.4 
.bb_main.4:
AND RDI, 0b1111111111111 # instrumentation
CMOVNZ RAX, qword ptr [R14 + RDI] 
MOVZX RDI, AX 
AND RBX, 0b1111111111111 # instrumentation
INC dword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
DEC qword ptr [R14 + RDX] 
ADD DIL, DIL 
AND RBX, 0b1111111111111 # instrumentation
CMOVO CX, word ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
INC byte ptr [R14 + RAX] 
CMOVNO ESI, EBX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
