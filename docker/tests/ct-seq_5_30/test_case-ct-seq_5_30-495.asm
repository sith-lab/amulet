.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
DEC qword ptr [R14 + RBX] 
CMOVB RDX, RBX 
AND RDI, 0b1111111111111 # instrumentation
CMP EBX, dword ptr [R14 + RDI] 
MOVZX RDI, BL 
AND RCX, 0b1111111111111 # instrumentation
CMOVZ DI, word ptr [R14 + RCX] 
CMOVP RDI, RDX 
AND RAX, 0b1111111111111 # instrumentation
CMOVNLE SI, word ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVB RDI, qword ptr [R14 + RAX] 
CWDE  
JMP .bb_main.1 
.bb_main.1:
OR RSI, 0b1000000000000000000000000000000 # instrumentation
BSF RDI, RSI 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RCX], AL 
AND RAX, 0b1111111111111 # instrumentation
LOCK NEG dword ptr [R14 + RAX] 
CMOVNBE RSI, RAX 
JLE .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
MUL word ptr [R14 + RDI] 
ADD CL, -27 
CMP DIL, 91 
MOVZX DX, CL 
MOVZX RDI, DL 
AND RCX, 0b1111111111111 # instrumentation
DEC dword ptr [R14 + RCX] 
JMP .bb_main.3 
.bb_main.3:
AND RDI, 0b1111111111111 # instrumentation
INC dword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNB AX, word ptr [R14 + RBX] 
CMC  
AND RCX, 0b1111111111111 # instrumentation
MOVZX DI, byte ptr [R14 + RCX] 
CMOVZ AX, BX 
INC ECX 
JNB .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
MOV DI, -1088 
ADD RBX, -101 
AND RDX, 0b1111111111111 # instrumentation
LOCK NEG dword ptr [R14 + RDX] 
ADC EAX, 75 
AND RSI, 0b1111111111111 # instrumentation
CMOVO EDI, dword ptr [R14 + RSI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
