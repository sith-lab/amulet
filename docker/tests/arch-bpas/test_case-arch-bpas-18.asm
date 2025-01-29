.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CWDE  
IMUL BL 
AND RAX, 0b1111111111111 # instrumentation
CMOVP EAX, dword ptr [R14 + RAX] 
SETNL BL 
OR EDI, 1 # instrumentation
AND EDX, EDI # instrumentation
SHR EDX, 1 # instrumentation
DIV EDI 
AND RCX, 0b1111111111111 # instrumentation
LOCK XOR word ptr [R14 + RCX], DX 
IMUL RDI, RAX 
ADD SIL, -34 # instrumentation
SETS AL 
CMOVNB RCX, RBX 
AND SIL, -8 
CMOVNS SI, AX 
JMP .bb_main.1 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RSI], -1329949662 
AND RSI, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RSI], EBX 
XOR AX, 27594 
MUL DL 
INC SIL 
XOR RDX, -33 
SUB AL, DL 
AND RAX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RAX], 25 
CMOVNO SI, AX 
SBB EAX, EBX 
JNL .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
AND word ptr [R14 + RDI], AX 
CLC  
AND RAX, 960755744 
AND RBX, 0b1111111111111 # instrumentation
CMOVBE RDI, qword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
CMP EDX, dword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
INC dword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
MUL dword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVLE BX, word ptr [R14 + RDI] 
SETNB DL 
CMP RCX, RSI 
JBE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RAX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
SETBE byte ptr [R14 + RSI] 
SETNBE DIL 
CMP AX, -20415 
SBB EDX, EDI 
ADD EAX, -1182033417 
ADC ECX, EDX 
AND RDI, 0b1111111111111 # instrumentation
IMUL qword ptr [R14 + RDI] 
ADD DIL, -72 # instrumentation
SETNS CL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
