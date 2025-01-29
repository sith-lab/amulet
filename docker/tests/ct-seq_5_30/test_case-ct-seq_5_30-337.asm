.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, -72 
AND RAX, 0b1111111111111 # instrumentation
CMOVNZ RAX, qword ptr [R14 + RAX] 
SUB CL, DL 
AND RDX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDX], AX 
ADD AL, 78 
CMC  
CBW  
AND RDX, 0b1111111111111 # instrumentation
ADC DL, byte ptr [R14 + RDX] 
JNP .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RBX], EAX 
MOV BL, AL 
AND RSI, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RSI], RCX 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RSI], -59 
AND RBX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RBX], -30298 
SUB RSI, RDX 
STD  
XCHG EAX, EAX 
AND RAX, 0b1111111111111 # instrumentation
CMOVNS RSI, qword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
IMUL DX, word ptr [R14 + RSI] 
JMP .bb_main.2 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RDI], 38 
AND RBX, 0b1111111111111 # instrumentation
ADD AX, word ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
CMP ESI, dword ptr [R14 + RSI] 
JMP .bb_main.3 
.bb_main.3:
AND RSI, 0b1111111111111 # instrumentation
LOCK NEG byte ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RDI], 54 
AND RSI, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RSI], 27 
JMP .bb_main.4 
.bb_main.4:
AND RAX, 0b1111111111111 # instrumentation
CMOVBE EDI, dword ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RAX], 114 
AND RDI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDI], EAX 
MOVSX RDX, CX 
CMOVNBE EDX, EDI 
AND RCX, 0b1111111111111 # instrumentation
SUB DL, byte ptr [R14 + RCX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
