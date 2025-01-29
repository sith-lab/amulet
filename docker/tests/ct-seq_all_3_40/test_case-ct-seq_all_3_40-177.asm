.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, -44 # instrumentation
SBB RCX, RAX 
CMOVNZ EBX, EDX 
AND RBX, 0b1111111111111 # instrumentation
AND dword ptr [R14 + RBX], EAX 
NEG AX 
OR DX, 0b1000000000000000 # instrumentation
BSF DI, DX 
OR EDI, 1 # instrumentation
AND EDX, EDI # instrumentation
SHR EDX, 1 # instrumentation
DIV EDI 
AND RDI, 0b1111111111111 # instrumentation
CMOVNO DI, word ptr [R14 + RDI] 
TEST AX, -5897 
OR BL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV BL 
XOR DL, -29 
AND RDX, 0b1111111111111 # instrumentation
AND dword ptr [R14 + RDX], -4 
AND RSI, 0b1111111111111 # instrumentation
MUL word ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RAX], CX 
MOVZX EBX, DL 
AND RDX, 0b1111111111111 # instrumentation
CMOVBE RAX, qword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
SETNP byte ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
AND DL, byte ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
CMOVP RCX, qword ptr [R14 + RBX] 
LOOPE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
ADD DIL, -44 # instrumentation
CMOVNO EDI, EAX 
AND RDX, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RDX], -24 
SETBE AL 
AND RBX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RBX] 
NOT EAX 
AND RSI, 0b1111111111111 # instrumentation
LOCK XADD dword ptr [R14 + RSI], EDI 
AND RCX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RCX], DL 
JMP .bb_main.2 
.bb_main.2:
ADD SIL, 125 # instrumentation
SETNL CL 
AND RAX, 0b1111111111111 # instrumentation
LOCK XOR qword ptr [R14 + RAX], 114 
AND RDI, 0b1111111111111 # instrumentation
NOT byte ptr [R14 + RDI] 
SETL CL 
CMOVNZ ESI, ESI 
AND RDX, 0b1111111111111 # instrumentation
IMUL RSI, qword ptr [R14 + RDX], 51 
MOV RBX, RCX 
IMUL BL 
AND RAX, 0b1111111111111 # instrumentation
LOCK NEG qword ptr [R14 + RAX] 
SUB DL, -119 
IMUL RBX, RAX 
ADD AX, 23689 
SUB EAX, -155529661 
AND RDX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RDX], BX 
SETNS DL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
