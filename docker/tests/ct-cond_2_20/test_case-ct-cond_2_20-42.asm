.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
SUB RAX, -922128 
CLD  
SBB SI, BX 
AND RSI, 0b1111111111111 # instrumentation
CMOVO DI, word ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RDI], RBX 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RDI], EDX 
CMOVBE BX, DX 
AND RDI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDI], CX 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RBX], -3 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RAX], RSI 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RBX], -19 
AND RAX, 0b1111111111111 # instrumentation
CMOVNBE EBX, dword ptr [R14 + RAX] 
CMOVP RCX, RSI 
LEA CX, qword ptr [RDX + RDI + 10007] 
AND RCX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RCX], EAX 
AND RBX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RBX], 1 # instrumentation
AND DX, word ptr [R14 + RBX] # instrumentation
SHR DX, 1 # instrumentation
DIV word ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNO ESI, dword ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK DEC qword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVZ RDX, qword ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
CMP CL, byte ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
