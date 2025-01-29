.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RDI], SIL 
IMUL RDX, RDX, 39 
SBB DL, CL 
AND RDI, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RDI], 110 
AND RSI, 0b1111111111111 # instrumentation
SBB ESI, dword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
ADD AL, byte ptr [R14 + RDX] 
JNBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
OR RDX, 0b1000000000000000000000000000000 # instrumentation
BSF RDX, RDX 
AND RBX, 0b1111111111111 # instrumentation
CMOVBE SI, word ptr [R14 + RBX] 
OR DI, 1 # instrumentation
AND DX, DI # instrumentation
SHR DX, 1 # instrumentation
DIV DI 
SUB ESI, -13 
AND RDX, 0b1111111111111 # instrumentation
LOCK INC word ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
IMUL EAX, dword ptr [R14 + RSI] 
ADD SIL, 117 # instrumentation
CMOVNLE DX, DI 
AND RAX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RAX], ESI 
XCHG DL, AL 
DEC AL 
AND RBX, 0b1111111111111 # instrumentation
LOCK INC qword ptr [R14 + RBX] 
JBE .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
CMOVS EAX, dword ptr [R14 + RDX] 
IMUL SI 
AND RSI, 0b1111111111111 # instrumentation
IMUL BX, word ptr [R14 + RSI], 39 
AND RBX, 0b1111111111111 # instrumentation
CMOVNLE SI, word ptr [R14 + RBX] 
JNO .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RBX, 0b1111111111111 # instrumentation
CMOVP DX, word ptr [R14 + RBX] 
MUL BL 
MOV DX, BX 
AND RAX, 0b1111111111111 # instrumentation
CMOVLE RCX, qword ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
CMP AL, byte ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK INC dword ptr [R14 + RDX] 
JNS .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RBX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RBX], 34 
NEG AL 
AND RCX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RCX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
