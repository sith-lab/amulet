.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RSI] 
ADD RAX, -1592097935 
MOVZX DX, DIL 
AND RSI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RSI], 0b1000000000000000000000000000000 # instrumentation
BSF RDX, qword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
CMP RSI, qword ptr [R14 + RDI] 
STD  
AND RCX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RCX], -73 
AND RAX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RAX], DL 
MOVSX EBX, CL 
AND RDX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDX], -3809 
AND RBX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RBX], DL 
AND RAX, 0b1111111111111 # instrumentation
MOV ECX, dword ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RCX], 35 
AND RDX, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RDX] 
CMP DL, DL 
AND RCX, 0b1111111111111 # instrumentation
INC byte ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK NEG qword ptr [R14 + RDI] 
SUB SI, AX 
ADD DL, DIL 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RSI], ESI 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RSI], BL 
JS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
CMP DI, word ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNO DX, word ptr [R14 + RDX] 
MOV BL, -102 
AND RDX, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
MUL dword ptr [R14 + RCX] 
CWD  
XCHG ECX, EAX 
AND RBX, 0b1111111111111 # instrumentation
LOCK INC byte ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK NEG dword ptr [R14 + RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
