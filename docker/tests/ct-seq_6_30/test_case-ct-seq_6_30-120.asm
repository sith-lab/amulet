.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
OR AX, 0b1000000000000000 # instrumentation
BSR DI, AX 
ADD SIL, 3 # instrumentation
CMOVNO ECX, EDX 
CMOVLE AX, CX 
AND RBX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RBX], DIL 
SUB BX, 49 
JNZ .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
SUB EDX, dword ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
MOVZX RBX, byte ptr [R14 + RAX] 
CMP RAX, 89 
AND RDI, 0b1111111111111 # instrumentation
CMOVL RBX, qword ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNS RAX, qword ptr [R14 + RSI] 
CMOVNO ECX, EDI 
AND RDX, 0b1111111111111 # instrumentation
CMP RBX, qword ptr [R14 + RDX] 
CMOVLE DI, DX 
ADD DIL, -35 
CMOVNB RDI, RSI 
JBE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDX], 0b1000000000000000000000000000000 # instrumentation
BSR EDI, dword ptr [R14 + RDX] 
OR EAX, 0b1000000000000000000000000000000 # instrumentation
BSF ECX, EAX 
ADD DIL, 72 # instrumentation
CMOVNS CX, BX 
CMP EBX, -17 
JRCXZ .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
ADD AX, -18391 
AND RAX, 0b1111111111111 # instrumentation
LOCK NEG dword ptr [R14 + RAX] 
JZ .bb_main.4 
JMP .bb_main.5 
.bb_main.4:
AND RDI, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RDI] 
CWD  
IMUL ESI, ECX, 2 
IMUL DX, AX, 101 
CMOVNB RDI, RDI 
MUL BL 
CWDE  
JMP .bb_main.5 
.bb_main.5:
OR CL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV CL 
AND RBX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RBX], 124 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
