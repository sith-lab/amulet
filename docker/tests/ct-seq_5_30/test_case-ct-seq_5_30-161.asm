.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, 79 # instrumentation
CMOVNBE EAX, EDX 
OR RDI, 0b1000000000000000000000000000000 # instrumentation
BSF RDX, RDI 
AND RDI, 0b1111111111111 # instrumentation
MOVZX EDX, byte ptr [R14 + RDI] 
CBW  
AND RBX, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RSI], AL 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RSI], AL 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RAX], DL 
JMP .bb_main.1 
.bb_main.1:
SUB DL, CL 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RDX], 4 
CLC  
DEC BL 
AND RDX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RDX], 75 
AND RDX, 0b1111111111111 # instrumentation
CMP BL, byte ptr [R14 + RDX] 
JNB .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
MOVZX RCX, byte ptr [R14 + RAX] 
IMUL RDX, RSI 
AND RDX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDX], 0b1000000000000000000000000000000 # instrumentation
BSR ESI, dword ptr [R14 + RDX] 
JMP .bb_main.3 
.bb_main.3:
AND RDI, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RDI], 74 
AND RSI, 0b1111111111111 # instrumentation
ADC BL, byte ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
IMUL AX, word ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVBE EDX, dword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
MUL word ptr [R14 + RSI] 
ADD BL, DL 
ADD DL, AL 
SUB DIL, 28 
AND RAX, 0b1111111111111 # instrumentation
LOCK INC byte ptr [R14 + RAX] 
JMP .bb_main.4 
.bb_main.4:
AND RSI, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RSI], DL 
SUB AX, 11524 
AND RCX, 0b1111111111111 # instrumentation
LOCK DEC qword ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK NEG byte ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
