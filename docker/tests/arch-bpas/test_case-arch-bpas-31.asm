.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, -76 # instrumentation
SBB AX, -22465 
AND RSI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RSI], CL 
SUB CX, 110 
AND RBX, 0b1111111111111 # instrumentation
LOCK NOT qword ptr [R14 + RBX] 
MOV RBX, RDI 
AND RDX, 0b1111111111111 # instrumentation
LOCK OR qword ptr [R14 + RDX], -7 
AND RBX, 0b1111111111111 # instrumentation
AND AX, word ptr [R14 + RBX] 
JMP .bb_main.1 
.bb_main.1:
XOR SIL, -98 
NEG CL 
AND RAX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RAX], SI 
JNBE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RAX], ESI 
AND RSI, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RSI] 
SETP AL 
AND RBX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RBX], 50 
AND CL, DIL 
AND RAX, 0b1111111111111 # instrumentation
CMP CL, byte ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RSI], AX 
AND RBX, 0b1111111111111 # instrumentation
LOCK INC byte ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
AND qword ptr [R14 + RBX], 86 
JMP .bb_main.3 
.bb_main.3:
AND DL, -76 
MOVZX DI, DIL 
INC EDI 
SETP BL 
SBB DI, 14 
SBB AL, 57 
JNP .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RDX, 0b1111111111111 # instrumentation
CMOVS ECX, dword ptr [R14 + RDX] 
CMOVNP ECX, EBX 
AND RDI, 0b1111111111111 # instrumentation
XOR SI, word ptr [R14 + RDI] 
MOV RAX, RBX 
AND RBX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RBX], -108 
CMOVO ECX, EDI 
NEG CX 
AND RAX, 0b1111111111111 # instrumentation
LOCK INC dword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVLE RBX, qword ptr [R14 + RDX] 
IMUL RSI, RBX 
ADD DIL, -84 # instrumentation
CMOVNBE RCX, RBX 
JS .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
ADD DIL, 21 # instrumentation
SBB BL, -102 
AND RBX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RBX], CL 
SETNBE BL 
LEA EDX, qword ptr [RAX + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
