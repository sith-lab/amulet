.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
MOVSX DX, byte ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVL DX, word ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RDI], 78 
CMP EAX, 1017369916 
AND RBX, 0b1111111111111 # instrumentation
CMOVO DX, word ptr [R14 + RBX] 
OR EDI, 0b1000000000000000000000000000000 # instrumentation
BSF EDX, EDI 
JMP .bb_main.1 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
IMUL RAX, qword ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK INC dword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RDI], -22 
IMUL AL 
ADD DIL, -101 # instrumentation
CMOVP ESI, EAX 
JNS .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
ADD DIL, -1 # instrumentation
CMOVZ EDI, ECX 
AND RAX, 0b1111111111111 # instrumentation
CMOVO SI, word ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDI], ESI 
AND RCX, 0b1111111111111 # instrumentation
SUB BX, word ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RAX] 
JNS .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RSI, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RSI] 
MUL DIL 
CLD  
OR RAX, 0b1000000000000000000000000000000 # instrumentation
BSR RCX, RAX 
ADD DIL, -50 # instrumentation
SBB DI, SI 
AND RBX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RBX], 22955 
JZ .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
ADD DIL, -10 # instrumentation
SBB SIL, DIL 
OR BX, 1 # instrumentation
AND DX, BX # instrumentation
SHR DX, 1 # instrumentation
DIV BX 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RSI], -59 
ADD CL, CL 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RAX], SIL 
CMOVO RDX, RBX 
INC RSI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
