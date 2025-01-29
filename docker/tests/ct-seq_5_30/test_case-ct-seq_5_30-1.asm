.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RDI], 67 
CMOVL CX, AX 
CMP RAX, 1662611635 
INC DL 
MOVSX RDI, BX 
LEA CX, qword ptr [RCX] 
CMOVZ RDI, RBX 
AND RBX, 0b1111111111111 # instrumentation
CMOVZ EBX, dword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RDX], AL 
AND RDX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDX], 1 # instrumentation
AND RBX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RBX], 0b1000000000000000 # instrumentation
BSF BX, word ptr [R14 + RBX] 
JNZ .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RAX], CL 
ADC DIL, -127 
AND RAX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RAX], CL 
JLE .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
MOVSX BX, AL 
AND RAX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RAX], AX 
AND RDI, 0b1111111111111 # instrumentation
CMOVL AX, word ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
CMP RDX, qword ptr [R14 + RDX] 
JNS .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RBX, 0b1111111111111 # instrumentation
LOCK INC word ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RBX], 2086139017 
AND RSI, 0b1111111111111 # instrumentation
CMOVNBE BX, word ptr [R14 + RSI] 
MOVSX CX, SIL 
CMOVNB DX, BX 
JB .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RDI, 0b1111111111111 # instrumentation
DEC dword ptr [R14 + RDI] 
CMOVL DX, AX 
AND RDI, 0b1111111111111 # instrumentation
LOCK INC byte ptr [R14 + RDI] 
ADD RDI, RCX 
AND RDI, 0b1111111111111 # instrumentation
LOCK DEC word ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
CMOVB RDX, qword ptr [R14 + RCX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
