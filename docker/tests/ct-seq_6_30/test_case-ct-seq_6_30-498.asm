.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, 124 # instrumentation
CMOVLE AX, DX 
MOV DIL, BL 
JMP .bb_main.1 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RCX], BL 
CLC  
OR RBX, 0b1000000000000000000000000000000 # instrumentation
BSR RCX, RBX 
ADD DIL, 56 # instrumentation
SBB EBX, 52 
AND RCX, 0b1111111111111 # instrumentation
DEC word ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
MOV SIL, byte ptr [R14 + RBX] 
CMOVO RBX, RAX 
AND RAX, 0b1111111111111 # instrumentation
SUB AL, byte ptr [R14 + RAX] 
JMP .bb_main.2 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RSI], RCX 
AND RSI, 0b1111111111111 # instrumentation
INC byte ptr [R14 + RSI] 
INC SIL 
AND RSI, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RSI] 
JMP .bb_main.3 
.bb_main.3:
AND RAX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
MOV BL, byte ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
ADD RSI, qword ptr [R14 + RDX] 
MOVSX DI, DL 
JMP .bb_main.4 
.bb_main.4:
AND RSI, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RSI], 105 
CMP RAX, 1523768469 
AND RCX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RCX], DIL 
AND RSI, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RSI], ECX 
MUL EAX 
CMP EAX, 1203692245 
SUB AL, 70 
JB .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
OR ESI, 1 # instrumentation
AND EDX, ESI # instrumentation
SHR EDX, 1 # instrumentation
DIV ESI 
AND RAX, 0b1111111111111 # instrumentation
IMUL RDX, qword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RDX], RSI 
AND RDI, 0b1111111111111 # instrumentation
INC dword ptr [R14 + RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
