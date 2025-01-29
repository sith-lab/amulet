.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
IMUL DI, BX, -50 
AND RDX, 0b1111111111111 # instrumentation
CMOVO DX, word ptr [R14 + RDX] 
OR DI, 1 # instrumentation
AND DX, DI # instrumentation
SHR DX, 1 # instrumentation
DIV DI 
ADD SIL, -57 # instrumentation
CMOVL AX, SI 
OR ESI, 0b1000000000000000000000000000000 # instrumentation
BSF ESI, ESI 
AND RBX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RBX], 127 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RSI], EBX 
CMOVS CX, AX 
JNB .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RBX], 17 
CMOVO RDX, RCX 
SUB AL, 11 
AND RSI, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RSI], 36 
SBB EAX, -702543474 
JMP .bb_main.2 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RAX], 1 # instrumentation
AND DX, word ptr [R14 + RAX] # instrumentation
SHR DX, 1 # instrumentation
DIV word ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVP SI, word ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDI], CX 
AND RDI, 0b1111111111111 # instrumentation
LOCK NEG word ptr [R14 + RDI] 
INC AL 
OR EAX, 1 # instrumentation
AND EDX, EAX # instrumentation
SHR EDX, 1 # instrumentation
DIV EAX 
JMP .bb_main.3 
.bb_main.3:
AND RDI, 0b1111111111111 # instrumentation
ADD RAX, qword ptr [R14 + RDI] 
CMP AL, -95 
AND RAX, 0b1111111111111 # instrumentation
MUL qword ptr [R14 + RAX] 
SBB CL, CL 
NEG AL 
SBB CL, CL 
CMOVNBE EAX, EAX 
JNL .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RSI, 0b1111111111111 # instrumentation
CMOVNZ ECX, dword ptr [R14 + RSI] 
MOVSX RCX, BL 
AND RDX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RDX], 105 
AND RBX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RBX], DL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
