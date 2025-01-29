.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
CMOVNZ ECX, dword ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RBX], 1 # instrumentation
MOV AX, 1 # instrumentation
DIV byte ptr [R14 + RBX] 
CMP AX, -17728 
AND RCX, 0b1111111111111 # instrumentation
LOCK NEG qword ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RBX], 121 
ADC RAX, 1380583619 
AND RCX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RCX], 121 
AND RBX, 0b1111111111111 # instrumentation
MOVSX CX, byte ptr [R14 + RBX] 
LOOPNE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RDI], 101 
CMOVNBE EBX, EBX 
AND RAX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RAX], AL 
ADD RAX, 68 
AND RSI, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RSI], 27 
AND RDI, 0b1111111111111 # instrumentation
CMOVBE SI, word ptr [R14 + RDI] 
JMP .bb_main.2 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
MOVZX CX, byte ptr [R14 + RCX] 
IMUL CX, AX 
AND RAX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RAX], -18 
AND RDX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDX], AL 
MOVZX DI, DIL 
AND RAX, 0b1111111111111 # instrumentation
CMP EAX, dword ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
