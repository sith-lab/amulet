.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
INC DI 
ADD CX, SI 
TEST CL, SIL 
AND RCX, 0b1111111111111 # instrumentation
MOVSX RDI, byte ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
MOV DI, word ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RSI], -32 
AND RBX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RBX], -33 
AND EBX, 72 
CMOVL SI, BX 
SETNZ AL 
AND BX, -120 
JMP .bb_main.1 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RAX], 58 
SETLE DIL 
IMUL RDX 
OR EBX, 1 # instrumentation
AND EDX, EBX # instrumentation
SHR EDX, 1 # instrumentation
DIV EBX 
AND RCX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RCX], 1 # instrumentation
AND DX, word ptr [R14 + RCX] # instrumentation
SHR DX, 1 # instrumentation
DIV word ptr [R14 + RCX] 
ADD DIL, 65 # instrumentation
LEA RDI, qword ptr [RAX] 
SETNBE DIL 
TEST AL, 89 
AND RDX, -74 
LOOPE .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
XCHG BX, AX 
DEC EBX 
AND RCX, 0b1111111111111 # instrumentation
MOV CL, byte ptr [R14 + RCX] 
CMOVNZ EDX, EAX 
ADD DL, BL 
SETNZ AL 
AND RDX, 0b1111111111111 # instrumentation
IMUL RAX, qword ptr [R14 + RDX] 
JMP .bb_main.3 
.bb_main.3:
NEG BL 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RAX], 24 
CMOVB EDX, EDX 
NEG SI 
SETNBE DIL 
AND RCX, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RCX] 
MOV EDI, 1131543623 
TEST RBX, -473152536 
AND SI, -110 
MUL DX 
ADD DIL, 3 # instrumentation
NOT DIL 
CMOVNBE RCX, RDX 
XADD DL, CL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
