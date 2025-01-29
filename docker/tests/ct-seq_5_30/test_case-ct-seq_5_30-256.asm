.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MOVSX AX, CL 
AND RCX, 0b1111111111111 # instrumentation
IMUL RDI, qword ptr [R14 + RCX], -118 
CMOVNB EAX, EAX 
AND RSI, 0b1111111111111 # instrumentation
LOCK NEG byte ptr [R14 + RSI] 
ADD DI, -88 
AND RCX, 0b1111111111111 # instrumentation
CMOVNB RCX, qword ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RCX], 0b1000000000000000 # instrumentation
BSR DX, word ptr [R14 + RCX] 
NEG EDI 
AND RDI, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RDI], -114 
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RSI], AL 
IMUL RBX, RBX, 13 
AND RCX, 0b1111111111111 # instrumentation
ADC RDI, qword ptr [R14 + RCX] 
OR ESI, 1 # instrumentation
AND EDX, ESI # instrumentation
SHR EDX, 1 # instrumentation
DIV ESI 
ADD DIL, -19 # instrumentation
CLD  
JB .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
ADD SIL, -24 # instrumentation
ADC AL, -123 
MOV CX, BX 
JMP .bb_main.3 
.bb_main.3:
OR CX, 0b1000000000000000 # instrumentation
BSR DX, CX 
ADD SIL, -113 # instrumentation
CMOVP EDX, EAX 
CMOVNB EAX, EBX 
JS .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
INC CL 
AND RCX, 0b1111111111111 # instrumentation
CMOVO EDI, dword ptr [R14 + RCX] 
SUB EAX, 647563724 
BSWAP ECX 
CMOVB EDX, EAX 
AND RDX, 0b1111111111111 # instrumentation
CMOVZ RAX, qword ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RCX], 78 
SUB EAX, -1076128380 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
