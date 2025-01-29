.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RSI], CL 
AND RDX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RDX], EAX 
INC RDI 
MOV CL, 11 
OR BL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV BL 
AND RDI, 0b1111111111111 # instrumentation
INC word ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNS AX, word ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
ADD DI, word ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RSI], DL 
AND RBX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RBX], SI 
AND RDI, 0b1111111111111 # instrumentation
IMUL EAX, dword ptr [R14 + RDI] 
INC RBX 
AND RDI, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RDI], 50 
AND RAX, 0b1111111111111 # instrumentation
ADD CX, word ptr [R14 + RAX] 
IMUL SI, DI, -64 
AND RBX, 0b1111111111111 # instrumentation
CMOVO EDI, dword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
MOV RDI, qword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RSI], 0b1000000000000000000000000000000 # instrumentation
BSF EDX, dword ptr [R14 + RSI] 
ADD DIL, 28 # instrumentation
LAHF  
ADD AX, 25556 
AND RCX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RCX] 
CMOVL EDI, ESI 
AND RDI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDI], AX 
OR AX, 1 # instrumentation
AND DX, AX # instrumentation
SHR DX, 1 # instrumentation
DIV AX 
AND RAX, 0b1111111111111 # instrumentation
CMOVNZ ESI, dword ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
