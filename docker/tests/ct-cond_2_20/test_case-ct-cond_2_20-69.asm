.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
CMOVBE EAX, dword ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
MOV EDI, dword ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
MUL word ptr [R14 + RBX] 
STD  
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RCX], RSI 
ADD CL, DL 
AND RDX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RDX], EBX 
AND RBX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RBX], BL 
AND RBX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RBX], RCX 
AND RDX, 0b1111111111111 # instrumentation
LOCK NEG byte ptr [R14 + RDX] 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
LOCK DEC qword ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RSI], -68 
AND RSI, 0b1111111111111 # instrumentation
DEC dword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
SBB AL, byte ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
MUL dword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
CMOVL EDX, dword ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDI], 1 # instrumentation
AND DX, word ptr [R14 + RDI] # instrumentation
SHR DX, 1 # instrumentation
DIV word ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
MOVZX EDX, word ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RCX], CL 
AND RDI, 0b1111111111111 # instrumentation
CMOVNZ RDX, qword ptr [R14 + RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
