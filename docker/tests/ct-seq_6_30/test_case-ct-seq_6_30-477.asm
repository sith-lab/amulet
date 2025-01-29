.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDI], RAX 
CMOVNZ EBX, EBX 
ADD DIL, 50 
AND RCX, 0b1111111111111 # instrumentation
CMOVNP DX, word ptr [R14 + RCX] 
MOV EDI, EAX 
AND RBX, 0b1111111111111 # instrumentation
ADC DX, word ptr [R14 + RBX] 
JS .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
MOVSX ECX, BL 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RCX], RAX 
SBB SIL, 57 
DEC ECX 
ADD DL, BL 
CMOVL DI, SI 
JMP .bb_main.2 
.bb_main.2:
IMUL AX, AX, -84 
AND RAX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RAX], DL 
ADC EBX, EAX 
SUB AX, 15 
CMOVNBE EDI, EDI 
JNB .bb_main.3 
JMP .bb_main.5 
.bb_main.3:
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RCX], 8 
MOVZX EAX, DL 
AND RAX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RAX], 79 
AND RDX, 0b1111111111111 # instrumentation
CMP ESI, dword ptr [R14 + RDX] 
OR EAX, 0b1000000000000000000000000000000 # instrumentation
BSR EAX, EAX 
ADD SIL, -53 # instrumentation
CMOVNLE RSI, RDX 
AND RSI, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RSI], 1 # instrumentation
MOV AX, 1 # instrumentation
DIV byte ptr [R14 + RSI] 
JMP .bb_main.4 
.bb_main.4:
CMP RAX, RBX 
AND RDI, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RDI], ECX 
SAHF  
AND RAX, 0b1111111111111 # instrumentation
DEC dword ptr [R14 + RAX] 
CMP EAX, 528260480 
AND RCX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RCX], 1 # instrumentation
AND EDX, dword ptr [R14 + RCX] # instrumentation
SHR EDX, 1 # instrumentation
DIV dword ptr [R14 + RCX] 
JMP .bb_main.5 
.bb_main.5:
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
