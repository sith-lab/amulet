.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RSI], AL 
SBB AL, 76 
AND RAX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RAX], DL 
JNO .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
MOVSX RDX, SIL 
AND RDI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDI], -439813794 
CMP DIL, -115 
AND RSI, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RSI], RDI 
AND RCX, 0b1111111111111 # instrumentation
CMOVNS ESI, dword ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK NEG byte ptr [R14 + RCX] 
JMP .bb_main.2 
.bb_main.2:
ADD DIL, -113 # instrumentation
ADC AL, 61 
AND RCX, 0b1111111111111 # instrumentation
IMUL word ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RBX], EDI 
AND RDX, 0b1111111111111 # instrumentation
LOCK NEG byte ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDX], AL 
JLE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RSI, 0b1111111111111 # instrumentation
MOV DIL, byte ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
LOCK INC dword ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RBX], -47 
AND RSI, 0b1111111111111 # instrumentation
IMUL qword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
IMUL SI, word ptr [R14 + RAX], -78 
OR CX, 1 # instrumentation
AND DX, CX # instrumentation
SHR DX, 1 # instrumentation
DIV CX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
