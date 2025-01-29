.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD EDI, 126 
AND RDI, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RDI], BL 
AND RDX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RDX], ECX 
AND RDX, 0b1111111111111 # instrumentation
LOCK DEC qword ptr [R14 + RDX] 
MOVZX EDX, BL 
AND RCX, 0b1111111111111 # instrumentation
CMOVNO EDI, dword ptr [R14 + RCX] 
CMOVNS EAX, EDI 
XCHG DI, DI 
AND RBX, 0b1111111111111 # instrumentation
LOCK NEG word ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNBE SI, word ptr [R14 + RDI] 
CMOVS BX, BX 
OR EDX, 1 # instrumentation
ADC DL, BL 
JNBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
SUB DIL, -92 
AND RDI, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RDI], 1 # instrumentation
MOV AX, 1 # instrumentation
DIV byte ptr [R14 + RDI] 
ADD SIL, 22 # instrumentation
ADC EDX, EAX 
ADC AL, -77 
ADD ECX, 38 
AND RDX, 0b1111111111111 # instrumentation
CMOVL ECX, dword ptr [R14 + RDX] 
CMOVZ EDX, ECX 
IMUL BX, DI 
AND RDI, 0b1111111111111 # instrumentation
CMOVS RDI, qword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RDI], 50 
CMOVP AX, DI 
INC CX 
XCHG CX, AX 
AND RBX, 0b1111111111111 # instrumentation
MOV RDX, qword ptr [R14 + RBX] 
CMOVZ DI, AX 
CMOVS RSI, RDI 
AND RBX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RBX], 66 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
