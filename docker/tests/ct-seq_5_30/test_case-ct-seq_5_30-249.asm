.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RSI], RAX 
AND RSI, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RDX], 97 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RSI], RAX 
MOV AL, -102 
JMP .bb_main.1 
.bb_main.1:
SUB ECX, EBX 
AND RDI, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RDI], BL 
AND RDI, 0b1111111111111 # instrumentation
IMUL RAX, qword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
IMUL RDI, qword ptr [R14 + RBX], -56 
IMUL DI, DI 
AND RSI, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RSI], 20 
JMP .bb_main.2 
.bb_main.2:
XCHG BX, AX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNS EDI, dword ptr [R14 + RDX] 
MOV EAX, ESI 
MOVZX ECX, CX 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RBX], 79 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RCX], CL 
JLE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
IMUL DL 
AND RSI, 0b1111111111111 # instrumentation
INC word ptr [R14 + RSI] 
ADD RCX, -50 
AND RDI, 0b1111111111111 # instrumentation
LOCK INC byte ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
CMP RCX, qword ptr [R14 + RCX] 
CMOVP RSI, RDI 
ADC DL, DL 
AND RAX, 0b1111111111111 # instrumentation
CMOVZ AX, word ptr [R14 + RAX] 
LOOPNE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
ADD DIL, 44 # instrumentation
INC DX 
ADC RAX, -828449182 
SAHF  
CMOVB BX, SI 
DEC CL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
