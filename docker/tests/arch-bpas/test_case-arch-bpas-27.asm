.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
CMOVNL EAX, dword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RDI], ECX 
OR ECX, -106 
OR BX, 1 # instrumentation
AND DX, BX # instrumentation
SHR DX, 1 # instrumentation
DIV BX 
AND RDX, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RDX], SIL 
CMOVZ SI, DI 
AND RBX, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RBX], DI 
JP .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
CMOVNB BX, word ptr [R14 + RCX] 
INC AL 
AND RDI, 0b1111111111111 # instrumentation
MOV CL, byte ptr [R14 + RDI] 
IMUL BL 
MUL ECX 
OR EAX, 0b1000000000000000000000000000000 # instrumentation
BSF ESI, EAX 
LOOPE .bb_main.2 
JMP .bb_main.5 
.bb_main.2:
ADD SIL, 87 # instrumentation
SETL AL 
MOV AL, -16 
ADC EAX, 782467442 
SBB CX, 43 
JS .bb_main.3 
JMP .bb_main.5 
.bb_main.3:
NOT AX 
DEC DL 
CMPXCHG EDI, EAX 
JNBE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
ADD SIL, 125 # instrumentation
SETBE AL 
CMOVNO EBX, ECX 
OR EDI, 0b1000000000000000000000000000000 # instrumentation
BSF ESI, EDI 
MOVZX ESI, DI 
AND RDX, 0b1111111111111 # instrumentation
LOCK NOT byte ptr [R14 + RDX] 
MUL ESI 
OR RAX, -2101831122 
MOVSX EAX, DL 
AND RCX, 0b1111111111111 # instrumentation
CMOVLE DI, word ptr [R14 + RCX] 
SETNZ SIL 
XADD RAX, RBX 
AND RAX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RAX], DL 
JL .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
XOR AX, 22434 
AND RDX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RDX], BL 
AND RCX, 0b1111111111111 # instrumentation
MOVZX EBX, byte ptr [R14 + RCX] 
XOR EAX, 1443625684 
SBB EDI, EAX 
MOVSX ECX, DI 
CMOVBE EDX, EDX 
AND RDI, 0b1111111111111 # instrumentation
AND word ptr [R14 + RDI], -105 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
