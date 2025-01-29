.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
IMUL BL 
AND RSI, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RSI], 1 # instrumentation
MOV AX, 1 # instrumentation
DIV byte ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
ADD EBX, dword ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
INC word ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK INC byte ptr [R14 + RDI] 
CMOVS AX, BX 
ADD DI, CX 
AND RSI, 0b1111111111111 # instrumentation
CMOVBE EDX, dword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RAX], RAX 
CMP AX, 13307 
AND RBX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RBX], -60 
ADD AL, -10 
CMP SIL, DIL 
AND RAX, 0b1111111111111 # instrumentation
ADD DIL, byte ptr [R14 + RAX] 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
CLD  # instrumentation
AND RCX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RCX], SI 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
LODSB  
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
STOSD  
CMP DI, DI 
AND RBX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RBX], EAX 
AND RAX, 0b1111111111111 # instrumentation
CMOVL RAX, qword ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVB SI, word ptr [R14 + RCX] 
XCHG CL, CL 
DEC SI 
AND RBX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RBX], 70 
AND RBX, 0b1111111111111 # instrumentation
ADC AL, byte ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RCX], BL 
AND RSI, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RSI], AL 
AND RSI, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RSI] 
CMOVB EBX, EBX 
INC ECX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
