.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RDI], 86 
AND RDX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDX], 4 
AND RAX, 0b1111111111111 # instrumentation
ADD DX, word ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
INC word ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNB SI, word ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
CMOVP RDX, qword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
SBB CL, byte ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNBE RAX, qword ptr [R14 + RCX] 
JNL .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
DEC word ptr [R14 + RSI] 
CMOVNS CX, AX 
JL .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
SUB ECX, dword ptr [R14 + RBX] 
SUB SI, SI 
SUB AL, 70 
AND RCX, 0b1111111111111 # instrumentation
IMUL EDX, dword ptr [R14 + RCX] 
ADD SIL, 70 # instrumentation
LOOPE .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RBX], DX 
AND RDI, 0b1111111111111 # instrumentation
CMOVB RAX, qword ptr [R14 + RDI] 
SUB RBX, RBX 
AND RSI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RSI], 0b1000000000000000000000000000000 # instrumentation
BSR RAX, qword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
CMOVP RDI, qword ptr [R14 + RDI] 
OR BX, 1 # instrumentation
AND DX, BX # instrumentation
SHR DX, 1 # instrumentation
DIV BX 
ADD DIL, -104 # instrumentation
JBE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RBX, 0b1111111111111 # instrumentation
LOCK INC word ptr [R14 + RBX] 
LEA RDX, qword ptr [RDX + RDX + 52891] 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RBX], RCX 
CMP CX, DX 
JMP .bb_main.5 
.bb_main.5:
ADD DIL, -118 # instrumentation
CMOVP AX, AX 
NEG AL 
ADD EBX, -63 
CMOVLE BX, BX 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RBX], ESI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
