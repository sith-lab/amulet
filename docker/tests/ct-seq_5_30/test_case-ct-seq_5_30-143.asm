.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
OR EBX, 1 # instrumentation
AND EDX, EBX # instrumentation
SHR EDX, 1 # instrumentation
DIV EBX 
ADD DIL, -20 # instrumentation
CMOVNP AX, AX 
STC  
AND RCX, 0b1111111111111 # instrumentation
LOCK INC qword ptr [R14 + RCX] 
MUL RBX 
AND RAX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RAX], DL 
LOOPNE .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
IMUL RDI, qword ptr [R14 + RBX], 96 
ADD SIL, 125 # instrumentation
CMOVNP RDI, RSI 
ADC CL, 111 
AND RDI, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RDI], -67 
CMP RCX, RSI 
SUB AL, -111 
SBB EDI, 65 
JL .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
ADD BL, byte ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RDX], DX 
CMOVZ BX, DX 
MOVZX RDI, SIL 
JMP .bb_main.3 
.bb_main.3:
AND RBX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RBX], 92 
AND RSI, 0b1111111111111 # instrumentation
CMOVNZ AX, word ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
CMOVL RBX, qword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RDI], -66 
AND RCX, 0b1111111111111 # instrumentation
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RBX], RSI 
JBE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RCX, 0b1111111111111 # instrumentation
CMOVP RSI, qword ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVLE AX, word ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RDI], -87 
CMOVO RAX, RDX 
IMUL RBX 
MOV ESI, EAX 
AND RAX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RAX], BX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
