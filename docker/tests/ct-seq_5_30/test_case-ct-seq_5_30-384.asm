.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
INC RSI 
CMOVO EDX, EBX 
AND RDI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDI], AX 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RDI], 99 
AND RDX, 0b1111111111111 # instrumentation
CMOVS RDI, qword ptr [R14 + RDX] 
JMP .bb_main.1 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
LOCK NEG byte ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RDI], -89 
CMOVO DI, DX 
AND RDI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDI], 1 # instrumentation
AND EDX, dword ptr [R14 + RDI] # instrumentation
SHR EDX, 1 # instrumentation
DIV dword ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
CMOVZ AX, word ptr [R14 + RAX] 
JMP .bb_main.2 
.bb_main.2:
ADD DIL, 79 # instrumentation
MOV RAX, RDI 
CMOVNLE EAX, EBX 
CMOVNBE RAX, RAX 
CMOVNZ DI, AX 
ADD RBX, 17 
AND RBX, 0b1111111111111 # instrumentation
CMOVBE RDX, qword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDX], CL 
XCHG EDI, EAX 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RSI], -47 
AND RCX, 0b1111111111111 # instrumentation
IMUL RSI, qword ptr [R14 + RCX] 
ADD SIL, 74 # instrumentation
JBE .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
AND RSI, 0b1111111111111 # instrumentation
MOV ESI, dword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
CMOVB EDX, dword ptr [R14 + RDI] 
OR ECX, 0b1000000000000000000000000000000 # instrumentation
BSF EDX, ECX 
OR CX, 0b1000000000000000 # instrumentation
BSR BX, CX 
NEG DL 
JMP .bb_main.4 
.bb_main.4:
CMP RAX, 931561817 
MOVZX AX, BL 
AND RDX, 0b1111111111111 # instrumentation
CMOVNLE SI, word ptr [R14 + RDX] 
SBB ECX, ECX 
AND RAX, 0b1111111111111 # instrumentation
CMOVL EDI, dword ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
