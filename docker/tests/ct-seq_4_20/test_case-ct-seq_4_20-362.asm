.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RBX], BL 
AND RBX, 0b1111111111111 # instrumentation
ADC EDX, dword ptr [R14 + RBX] 
JLE .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RCX], AL 
AND RDI, 0b1111111111111 # instrumentation
SUB ECX, dword ptr [R14 + RDI] 
NEG DI 
AND RSI, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RSI], -11 
SBB AL, AL 
AND RDI, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RDI], 1 # instrumentation
MOV AX, 1 # instrumentation
DIV byte ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RSI], 49 
LOOPNE .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
INC word ptr [R14 + RDI] 
ADC AL, 62 
AND RBX, 0b1111111111111 # instrumentation
LOCK INC dword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
CMP EDI, dword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDX], -27269 
JL .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RDX, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RDX] 
MOVZX RCX, AX 
OR RDI, 0b1000000000000000000000000000000 # instrumentation
BSR RSI, RDI 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RBX], 106 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RDI], DIL 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RDI], 110 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
