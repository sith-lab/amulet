.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
CMOVNS RSI, qword ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
INC word ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
MUL qword ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RBX], EAX 
AND RCX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RCX], 0b1000000000000000000000000000000 # instrumentation
BSF EDX, dword ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
SBB RDI, qword ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RCX], SIL 
AND RCX, 0b1111111111111 # instrumentation
CMOVP ESI, dword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNO RDI, qword ptr [R14 + RDX] 
CLD  
LOOPE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
ADD EDI, -115 
AND RCX, 0b1111111111111 # instrumentation
ADD SIL, byte ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDI], DL 
AND RSI, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RSI], DL 
AND RBX, 0b1111111111111 # instrumentation
CMOVL RBX, qword ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RCX], 0b1000000000000000000000000000000 # instrumentation
BSR ESI, dword ptr [R14 + RCX] 
JMP .bb_main.2 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RDI], 24 
AND RAX, 0b1111111111111 # instrumentation
CMOVNO EDI, dword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RDX], 76 
AND RCX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RCX], DX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
