.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
DEC DIL 
CMOVNP EBX, EAX 
OR CL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV CL 
AND RDX, 0b1111111111111 # instrumentation
SUB RSI, qword ptr [R14 + RDX] 
CMOVO EAX, ECX 
SBB SIL, 1 
AND RBX, 0b1111111111111 # instrumentation
MOVZX EAX, byte ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RCX], ECX 
NEG BL 
AND RDX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RDX] 
MUL AL 
ADD EDX, -27 
ADC AL, 123 
JBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RAX], -68 
ADC AX, -5225 
CMOVL DX, DX 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RBX], BL 
AND RAX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RAX], BX 
AND RDX, 0b1111111111111 # instrumentation
INC word ptr [R14 + RDX] 
XCHG DX, CX 
AND RCX, 0b1111111111111 # instrumentation
CMOVZ ESI, dword ptr [R14 + RCX] 
ADD SI, BX 
CMOVLE CX, SI 
XCHG RBX, RCX 
LAHF  
AND RDI, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RDI], -25 
OR ECX, 0b1000000000000000000000000000000 # instrumentation
BSF ESI, ECX 
SUB SIL, -123 
CMOVNS RCX, RSI 
SUB DI, DI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
