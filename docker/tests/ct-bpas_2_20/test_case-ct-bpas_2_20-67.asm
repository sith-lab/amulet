.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
LOCK DEC byte ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RAX], 126 
AND RCX, 0b1111111111111 # instrumentation
LOCK INC word ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RSI], 0b1000000000000000000000000000000 # instrumentation
BSF EDX, dword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RDX], AL 
AND RDI, 0b1111111111111 # instrumentation
CMOVLE EAX, dword ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
SUB CL, byte ptr [R14 + RAX] 
CMOVO RDX, RCX 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RAX], -17 
AND RDX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDX], -85 
DEC DL 
AND RCX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RCX], -107 
AND RBX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RBX], CL 
JS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
MUL dword ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK DEC byte ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RCX], 9669 
CWDE  
AND RBX, 0b1111111111111 # instrumentation
MOVSX RBX, byte ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RSI], 58 
AND RSI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RSI], 1 # instrumentation
AND DX, word ptr [R14 + RSI] # instrumentation
SHR DX, 1 # instrumentation
DIV word ptr [R14 + RSI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
