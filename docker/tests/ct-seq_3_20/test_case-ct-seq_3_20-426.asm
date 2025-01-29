.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
OR CL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV CL 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RBX], CL 
AND RBX, 0b1111111111111 # instrumentation
CMOVNS RBX, qword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
NEG dword ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RCX], EBX 
JNS .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDX], 15602 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RDX], AL 
ADD SIL, 85 
SUB RBX, -6 
AND RSI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RSI], RAX 
AND RCX, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
MOVZX RSI, byte ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNO AX, word ptr [R14 + RDI] 
CMOVLE RBX, RDI 
CMOVNBE DI, DX 
AND RAX, 0b1111111111111 # instrumentation
ADD BL, byte ptr [R14 + RAX] 
JMP .bb_main.2 
.bb_main.2:
ADD SIL, -97 # instrumentation
ADC RDI, 115 
MOV AX, 16715 
AND RCX, 0b1111111111111 # instrumentation
SUB RAX, qword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RDX], -16 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
