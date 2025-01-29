.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RAX], SIL 
AND RBX, 0b1111111111111 # instrumentation
INC word ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RBX], CL 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RDI], AX 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RCX], DL 
JP .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
INC BL 
AND RBX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RBX], 64 
AND RBX, 0b1111111111111 # instrumentation
LOCK NEG byte ptr [R14 + RBX] 
MOVSX BX, AL 
AND RBX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RBX], BL 
OR SIL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV SIL 
ADD DIL, 72 # instrumentation
JZ .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RAX], EAX 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RDI], -78 
AND RDX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RDX], -10 
AND RCX, 0b1111111111111 # instrumentation
MOVSX RCX, byte ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
MOVSX BX, byte ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RSI], EDX 
JMP .bb_main.3 
.bb_main.3:
AND RCX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RCX], 15 
AND RBX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RBX], -93 
AND RAX, 0b1111111111111 # instrumentation
CMOVL RDX, qword ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
