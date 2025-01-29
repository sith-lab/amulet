.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
CMP DL, byte ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RCX], 1 # instrumentation
AND DX, word ptr [R14 + RCX] # instrumentation
SHR DX, 1 # instrumentation
DIV word ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDI], SI 
AND RSI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RSI], 1847528798 
CMP CL, AL 
AND RCX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RCX], 26 
JNS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD SIL, 52 # instrumentation
CMOVP RCX, RSI 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RCX], 102 
SBB ECX, 68 
AND RAX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RAX], DX 
AND RAX, 0b1111111111111 # instrumentation
MOVSX CX, byte ptr [R14 + RAX] 
MUL EBX 
ADD SIL, 90 # instrumentation
JNL .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RDX], RBX 
AND RSI, 0b1111111111111 # instrumentation
MOVSX ESI, byte ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNB RAX, qword ptr [R14 + RBX] 
IMUL BX, DX, 93 
MUL AL 
AND RCX, 0b1111111111111 # instrumentation
LOCK INC word ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RAX], 1 # instrumentation
AND RCX, 0b1111111111111 # instrumentation
SUB SI, word ptr [R14 + RCX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
