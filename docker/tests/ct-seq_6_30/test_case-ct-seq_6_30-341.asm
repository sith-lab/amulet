.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, -78 # instrumentation
CMOVNBE SI, AX 
CMOVO EDI, EDI 
CMOVNB EBX, ESI 
ADC EAX, -1014800715 
CMOVNS DX, DI 
AND RBX, 0b1111111111111 # instrumentation
CMP RDI, qword ptr [R14 + RBX] 
JLE .bb_main.1 
JMP .bb_main.5 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
MUL dword ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNBE ESI, dword ptr [R14 + RDI] 
CWDE  
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RDX], DX 
SBB EAX, -120571841 
ADD EAX, 1532985118 
JMP .bb_main.2 
.bb_main.2:
ADD SIL, -5 # instrumentation
CMOVL RBX, RBX 
CMOVNLE ESI, ESI 
ADC CL, 27 
AND RDI, 0b1111111111111 # instrumentation
CMOVNO SI, word ptr [R14 + RDI] 
LEA DX, qword ptr [RBX] 
JMP .bb_main.3 
.bb_main.3:
MUL RDI 
AND RDX, 0b1111111111111 # instrumentation
IMUL DI, word ptr [R14 + RDX], 20 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RAX], 28 
AND RAX, 0b1111111111111 # instrumentation
SBB EAX, dword ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSF ESI, dword ptr [R14 + RDI] 
IMUL DI, AX, 68 
ADD DIL, -64 # instrumentation
JBE .bb_main.4 
JMP .bb_main.5 
.bb_main.4:
AND RDX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDX], -18890 
ADC RAX, -96 
OR RDX, 0b1000000000000000000000000000000 # instrumentation
BSF RBX, RDX 
AND RDI, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RDI] 
SBB BX, -113 
JMP .bb_main.5 
.bb_main.5:
AND RAX, 0b1111111111111 # instrumentation
CMOVLE DX, word ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RCX], BL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
