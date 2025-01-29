.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
ADD BL, -43 
MOVZX ECX, DL 
CDQ  
AND RDI, 0b1111111111111 # instrumentation
ADC CL, byte ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RBX], SIL 
AND RBX, 0b1111111111111 # instrumentation
MOV BL, byte ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RCX], BL 
AND RDX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RDX], 14 
AND RDI, 0b1111111111111 # instrumentation
MOV RBX, qword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
INC dword ptr [R14 + RBX] 
SBB CL, DL 
AND RCX, 0b1111111111111 # instrumentation
CMOVB DI, word ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
CMPSD  
JLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD DIL, -76 # instrumentation
CMOVNO EDX, EBX 
AND RAX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RAX], 57 
AND RDI, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RDI], 0 
AND RAX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RAX], -61 
AND RCX, 0b1111111111111 # instrumentation
ADC RAX, qword ptr [R14 + RCX] 
ADC RAX, 837128034 
MUL BL 
AND RBX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RBX], -78 
AND RDX, 0b1111111111111 # instrumentation
INC byte ptr [R14 + RDX] 
STC  
OR DX, 1 # instrumentation
AND RSI, 0b1111111111111 # instrumentation
LOCK NEG qword ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
MUL dword ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RCX], 1 # instrumentation
AND DX, word ptr [R14 + RCX] # instrumentation
SHR DX, 1 # instrumentation
DIV word ptr [R14 + RCX] 
MOVZX RAX, DL 
AND RBX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RBX], -47 
CMP AX, BX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
