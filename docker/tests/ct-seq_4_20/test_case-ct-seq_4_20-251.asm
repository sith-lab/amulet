.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RSI], 9 
CMOVNL DI, CX 
AND RBX, 0b1111111111111 # instrumentation
ADC BL, byte ptr [R14 + RBX] 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
SUB RDX, qword ptr [R14 + RDX] 
MOV EDX, EBX 
AND RSI, 0b1111111111111 # instrumentation
CMOVLE EBX, dword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
CMOVZ CX, word ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RBX], 20 
SUB CL, 127 
JNO .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RDI], -128 
MOV BL, -109 
AND RCX, 0b1111111111111 # instrumentation
MOV DL, byte ptr [R14 + RCX] 
JO .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RDX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RDX], -124 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RSI], DI 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RAX], 116 
CMP RDI, RDI 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RCX], RDX 
AND RSI, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RSI], 1 # instrumentation
MOV AX, 1 # instrumentation
DIV byte ptr [R14 + RSI] 
ADD DIL, 12 # instrumentation
CMOVNO BX, SI 
AND RDX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RDX], AX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
