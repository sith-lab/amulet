.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RAX], -22 
AND RDI, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RDI], RDI 
AND RAX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RAX], 0b1000000000000000 # instrumentation
BSR DI, word ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RBX] 
ADC EDI, EBX 
JMP .bb_main.1 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RCX], 99 
AND RSI, 0b1111111111111 # instrumentation
CMOVNZ RBX, qword ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
IMUL RDX, qword ptr [R14 + RSI] 
OR BL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV BL 
OR EBX, 0b1000000000000000000000000000000 # instrumentation
BSR EBX, EBX 
ADD AL, -9 
OR AX, 0b1000000000000000 # instrumentation
BSF DX, AX 
AND RDX, 0b1111111111111 # instrumentation
SUB DL, byte ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RAX], -99 
JS .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
ADD SIL, -118 # instrumentation
CMOVP EDI, EDI 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RDI], RDX 
AND RDX, 0b1111111111111 # instrumentation
LOCK NEG byte ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNLE RDX, qword ptr [R14 + RDI] 
XCHG SIL, CL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
