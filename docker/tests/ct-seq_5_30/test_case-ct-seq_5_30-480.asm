.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CMP EAX, 1481023622 
IMUL RDX, RDX 
CMOVNO RDI, RBX 
ADD DI, -48 
LOOP .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
CLD  
CMP RSI, -37 
NEG DL 
IMUL RDX, RDX 
CMP CX, 106 
SUB CX, 93 
CMOVZ EAX, ESI 
AND RDX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDX], CL 
AND RAX, 0b1111111111111 # instrumentation
MUL dword ptr [R14 + RAX] 
SUB BX, 25 
AND RSI, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RSI], CL 
JNO .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
ADD DIL, 58 # instrumentation
BSWAP RDX 
CMOVNP BX, CX 
CMOVNBE EBX, EBX 
JNL .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
ADD SIL, 76 # instrumentation
LEA SI, qword ptr [RAX + RDX] 
MOV DI, 7174 
CMOVP DI, DX 
ADD RDI, -111 
INC RAX 
AND RBX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RBX], CL 
JMP .bb_main.4 
.bb_main.4:
OR DIL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV DIL 
AND RBX, 0b1111111111111 # instrumentation
IMUL dword ptr [R14 + RBX] 
ADD SIL, 65 # instrumentation
CMOVS RDI, RDI 
AND RDI, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RDI] 
ADC RDI, RAX 
AND RSI, 0b1111111111111 # instrumentation
MOVSX ESI, byte ptr [R14 + RSI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
