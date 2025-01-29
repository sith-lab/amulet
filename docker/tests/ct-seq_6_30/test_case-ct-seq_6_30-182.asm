.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, -118 # instrumentation
SBB AL, 28 
CMOVZ SI, SI 
JMP .bb_main.1 
.bb_main.1:
SUB EAX, 90 
DEC CL 
AND RSI, 0b1111111111111 # instrumentation
SUB DL, byte ptr [R14 + RSI] 
JBE .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
DEC EAX 
AND RBX, 0b1111111111111 # instrumentation
CMOVNO ESI, dword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RDI], BL 
AND RSI, 0b1111111111111 # instrumentation
SUB DL, byte ptr [R14 + RSI] 
XCHG ESI, EDI 
AND RBX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RBX], -128 
MOV CX, 8917 
JMP .bb_main.3 
.bb_main.3:
AND RBX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RBX], CL 
INC SI 
MOV RBX, -3700475082643139164 
CMOVBE RSI, RSI 
AND RCX, 0b1111111111111 # instrumentation
DEC qword ptr [R14 + RCX] 
JMP .bb_main.4 
.bb_main.4:
ADD SIL, -61 # instrumentation
ADC BL, CL 
AND RBX, 0b1111111111111 # instrumentation
SUB DL, byte ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RAX], DX 
AND RDI, 0b1111111111111 # instrumentation
SUB DIL, byte ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
IMUL byte ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RAX], -76 
CMOVP RDI, RSI 
ADC ESI, -2 
JZ .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
STC  
SBB AL, 42 
CMOVNS EDX, EAX 
AND RSI, 0b1111111111111 # instrumentation
LOCK DEC byte ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RDI], -4 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
