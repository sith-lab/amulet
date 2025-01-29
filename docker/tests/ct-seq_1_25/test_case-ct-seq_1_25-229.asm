.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
SAHF  
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RBX], EBX 
SUB RDI, RDX 
AND RDI, 0b1111111111111 # instrumentation
CMOVB EAX, dword ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
MOVZX ESI, byte ptr [R14 + RDX] 
CMOVBE RAX, RDI 
SBB EDX, ESI 
AND RAX, 0b1111111111111 # instrumentation
CMOVNS CX, word ptr [R14 + RAX] 
SUB EBX, EAX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNZ DX, word ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
ADC RSI, qword ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RSI], DL 
OR EAX, 0b1000000000000000000000000000000 # instrumentation
BSR EBX, EAX 
CDQ  
AND RSI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RSI], AX 
AND RCX, 0b1111111111111 # instrumentation
CMOVLE DX, word ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
INC word ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
LOCK NEG word ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RBX], BL 
MUL DIL 
AND RDI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDI], -33 
AND RBX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RBX], 111 
AND RDI, 0b1111111111111 # instrumentation
IMUL RDX, qword ptr [R14 + RDI], 76 
AND RBX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RBX], 0b1000000000000000000000000000000 # instrumentation
BSF EDX, dword ptr [R14 + RBX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
