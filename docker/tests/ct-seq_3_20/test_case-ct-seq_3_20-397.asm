.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RCX], CX 
AND RAX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RAX], -31440 
AND RDI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDI], AX 
AND RAX, 0b1111111111111 # instrumentation
CMOVLE ESI, dword ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
IMUL ESI, dword ptr [R14 + RBX], 22 
IMUL EAX, ESI, -35 
AND RAX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RAX], 9492 
JLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD DIL, 6 # instrumentation
CMOVL ESI, EDI 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RDX], AX 
AND RBX, 0b1111111111111 # instrumentation
CMOVP SI, word ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RDX], 92 
JMP .bb_main.2 
.bb_main.2:
IMUL EAX 
AND RDI, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RDI], ESI 
MOV CX, -23966 
AND RDX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RDX], AX 
AND RSI, 0b1111111111111 # instrumentation
CMOVNBE AX, word ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNLE EDI, dword ptr [R14 + RDI] 
ADC DL, DIL 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RAX], 110 
AND RDX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDX], RSI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
