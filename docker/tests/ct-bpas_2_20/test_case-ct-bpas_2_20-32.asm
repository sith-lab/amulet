.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
CMP AL, byte ptr [R14 + RSI] 
ADC RAX, -827658591 
CMOVL ECX, EDI 
AND RSI, 0b1111111111111 # instrumentation
CMOVLE EBX, dword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RAX], CL 
AND RDX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDX], RAX 
AND RBX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RBX], 37 
SBB DX, DI 
AND RDX, 0b1111111111111 # instrumentation
CMOVS RBX, qword ptr [R14 + RDX] 
SBB AL, 14 
AND RDX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RDX], 8 
JLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
CMOVS RDX, qword ptr [R14 + RDI] 
IMUL RBX, RAX, 35 
AND RDI, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RDI], 56 
AND RBX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RBX], 3 
AND RAX, 0b1111111111111 # instrumentation
ADD CX, word ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNB RAX, qword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RAX], ESI 
AND RCX, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RCX] 
SUB SIL, -102 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
