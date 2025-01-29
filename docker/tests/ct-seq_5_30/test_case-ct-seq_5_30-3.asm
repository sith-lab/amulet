.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RAX], RDX 
IMUL ESI, EBX 
CMOVO SI, CX 
AND RSI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RSI], 1605002774 
AND RDI, 0b1111111111111 # instrumentation
CMOVNS RDX, qword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RBX], -50 
JMP .bb_main.1 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RDX], SIL 
CMOVP AX, DX 
AND RDI, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RDI], 29 
AND RDX, 0b1111111111111 # instrumentation
INC word ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
MOV RDX, qword ptr [R14 + RDX] 
NEG EAX 
JNB .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
ADD RDI, RDI 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RAX], DX 
SUB BL, DL 
AND RBX, 0b1111111111111 # instrumentation
ADC BL, byte ptr [R14 + RBX] 
STC  
JMP .bb_main.3 
.bb_main.3:
ADD DIL, 66 # instrumentation
ADC AL, 122 
SUB ECX, 21 
CMOVNS SI, BX 
MOV DIL, -85 
CMOVNO DX, DX 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RDI], -42 
CMOVLE RDI, RCX 
JMP .bb_main.4 
.bb_main.4:
AND RSI, 0b1111111111111 # instrumentation
SBB DL, byte ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RDI], -81 
IMUL DL 
AND RSI, 0b1111111111111 # instrumentation
CMOVNP RCX, qword ptr [R14 + RSI] 
SUB CX, 44 
AND RDI, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
