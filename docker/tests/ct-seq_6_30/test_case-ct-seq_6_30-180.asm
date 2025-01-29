.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
SUB DIL, SIL 
AND RDI, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RDI], RDX 
IMUL EAX, ECX 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RCX], -8 
INC SIL 
JMP .bb_main.1 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RAX], EAX 
AND RSI, 0b1111111111111 # instrumentation
CMOVZ EAX, dword ptr [R14 + RSI] 
ADC RDX, RAX 
IMUL EDX, EDI 
IMUL RAX, RDI, -86 
AND RDI, 0b1111111111111 # instrumentation
CMOVZ RDX, qword ptr [R14 + RDI] 
SBB EAX, EDI 
AND RSI, 0b1111111111111 # instrumentation
LOCK DEC word ptr [R14 + RSI] 
JMP .bb_main.2 
.bb_main.2:
CMP AL, DIL 
AND RAX, 0b1111111111111 # instrumentation
CMOVP RCX, qword ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RAX], BL 
AND RDX, 0b1111111111111 # instrumentation
MOV SI, word ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RSI], 0b1000000000000000000000000000000 # instrumentation
BSF EDI, dword ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RSI], 1 # instrumentation
AND DX, word ptr [R14 + RSI] # instrumentation
SHR DX, 1 # instrumentation
DIV word ptr [R14 + RSI] 
ADD DIL, -49 # instrumentation
ADC AL, CL 
JNP .bb_main.3 
JMP .bb_main.5 
.bb_main.3:
CMP BL, DL 
AND RCX, 0b1111111111111 # instrumentation
CMOVNO EDI, dword ptr [R14 + RCX] 
JMP .bb_main.4 
.bb_main.4:
MOV DL, 94 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RSI], EBX 
NEG RBX 
CWDE  
AND RAX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RAX], DI 
LOOPE .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RBX], DL 
AND RSI, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RDI], CL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
