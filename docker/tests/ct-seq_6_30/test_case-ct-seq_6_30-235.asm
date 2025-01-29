.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RBX], -6 
AND RSI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RSI], SIL 
CMP RAX, 1420166960 
AND RCX, 0b1111111111111 # instrumentation
SUB SI, word ptr [R14 + RCX] 
OR CL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV CL 
ADD DIL, -1 # instrumentation
JNL .bb_main.1 
JMP .bb_main.5 
.bb_main.1:
NEG SIL 
AND RDX, 0b1111111111111 # instrumentation
LOCK DEC word ptr [R14 + RDX] 
MUL CL 
AND RDX, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RDX] 
ADD DIL, 54 # instrumentation
CMOVNBE DI, SI 
IMUL CX, BX, 0 
JMP .bb_main.2 
.bb_main.2:
CBW  
ADD BX, -114 
AND RCX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RCX], BL 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RAX], RSI 
LOOP .bb_main.3 
JMP .bb_main.5 
.bb_main.3:
AND RDX, 0b1111111111111 # instrumentation
CMOVNLE RDI, qword ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
IMUL ESI, dword ptr [R14 + RAX], 125 
AND RSI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RSI], -19492 
AND RDI, 0b1111111111111 # instrumentation
CMOVNP CX, word ptr [R14 + RDI] 
SUB BL, -29 
LOOPNE .bb_main.4 
JMP .bb_main.5 
.bb_main.4:
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RAX], RCX 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RDI], AX 
AND RDX, 0b1111111111111 # instrumentation
CMOVP RAX, qword ptr [R14 + RDX] 
IMUL EAX 
JMP .bb_main.5 
.bb_main.5:
ADD DIL, -109 # instrumentation
SBB AL, 62 
DEC RBX 
AND RDI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDI], AX 
OR DIL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV DIL 
ADD DIL, 44 # instrumentation
ADC DX, -20 
CMOVNP RAX, RDX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
