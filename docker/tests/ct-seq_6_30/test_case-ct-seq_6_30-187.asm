.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
DEC qword ptr [R14 + RSI] 
CWDE  
AND RAX, 0b1111111111111 # instrumentation
CMOVNP DI, word ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
MOVSX SI, byte ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVBE ESI, dword ptr [R14 + RBX] 
SBB RBX, RBX 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RDX], RSI 
JP .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RSI], -82 
SBB DI, AX 
AND RSI, 0b1111111111111 # instrumentation
CMOVZ SI, word ptr [R14 + RSI] 
OR DI, 0b1000000000000000 # instrumentation
BSR CX, DI 
AND RAX, 0b1111111111111 # instrumentation
ADD RCX, qword ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDI], -33 
SUB DL, CL 
JNLE .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
LOCK INC byte ptr [R14 + RCX] 
JMP .bb_main.3 
.bb_main.3:
ADD SIL, 126 # instrumentation
LAHF  
AND RDI, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RDI], RAX 
CMOVNB DX, BX 
MUL DL 
AND RDX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RDX] 
DEC CL 
JMP .bb_main.4 
.bb_main.4:
IMUL SIL 
ADD EAX, 1503221270 
AND RDX, 0b1111111111111 # instrumentation
DEC word ptr [R14 + RDX] 
LEA EDX, qword ptr [RAX + RDX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK INC word ptr [R14 + RDX] 
JZ .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
CMP EBX, -17 
AND RDI, 0b1111111111111 # instrumentation
CMOVNP RCX, qword ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
CMOVBE RDX, qword ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RCX], BX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
