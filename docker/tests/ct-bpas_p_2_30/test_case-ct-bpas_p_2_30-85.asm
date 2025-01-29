.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
ADD SIL, -117 # instrumentation
CMOVZ CX, SI 
AND RAX, 0b1111111111111 # instrumentation
CMOVL ESI, dword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
ADC DL, byte ptr [R14 + RSI] 
CMP AX, CX 
SBB AX, 5140 
AND RSI, 0b1111111111111 # instrumentation
IMUL AX, word ptr [R14 + RSI], 93 
INC BL 
AND RSI, 0b1111111111111 # instrumentation
CMP CL, byte ptr [R14 + RSI] 
OR RSI, 0b1000000000000000000000000000000 # instrumentation
BSF RAX, RSI 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
CMPSW  
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RDX], DL 
JNB .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
IMUL RDI, RAX 
SBB RAX, 1535978590 
AND RDI, 0b1111111111111 # instrumentation
DEC qword ptr [R14 + RDI] 
CMOVZ AX, BX 
CMP EAX, -813735530 
CMOVLE AX, DI 
CMOVS SI, DX 
CMOVNBE RCX, RDI 
MOVZX EBX, SIL 
CMOVBE EAX, EBX 
MOV DX, DX 
AND RAX, 0b1111111111111 # instrumentation
ADD DI, word ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVP EAX, dword ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
MOVSX RDI, word ptr [R14 + RAX] 
CMOVS RBX, RCX 
AND RCX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RCX], RSI 
CMOVB DI, AX 
AND RDX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDX], CX 
AND RAX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RAX], EBX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
