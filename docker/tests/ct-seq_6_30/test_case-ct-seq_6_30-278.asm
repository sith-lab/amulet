.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
MOV RDX, qword ptr [R14 + RCX] 
CMOVNL ESI, EDX 
AND RBX, 0b1111111111111 # instrumentation
ADD RSI, qword ptr [R14 + RBX] 
SUB DIL, SIL 
JL .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RDX], 123 
AND RAX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RAX], -96 
AND RDX, 0b1111111111111 # instrumentation
CMOVO RAX, qword ptr [R14 + RDX] 
ADD AL, -125 
AND RAX, 0b1111111111111 # instrumentation
IMUL EDX, dword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
MUL word ptr [R14 + RSI] 
JMP .bb_main.2 
.bb_main.2:
INC RCX 
AND RSI, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RSI], 39 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RSI], -94 
AND RAX, 0b1111111111111 # instrumentation
MUL word ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVS EDI, dword ptr [R14 + RDX] 
CMOVLE RDX, RDX 
LOOPNE .bb_main.3 
JMP .bb_main.5 
.bb_main.3:
AND RCX, 0b1111111111111 # instrumentation
CMOVO SI, word ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RDX], 37 
AND RSI, 0b1111111111111 # instrumentation
ADC DL, byte ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RDX], DIL 
CMP RAX, -646988685 
AND RDX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDX], RAX 
AND RDI, 0b1111111111111 # instrumentation
LOCK INC dword ptr [R14 + RDI] 
JMP .bb_main.4 
.bb_main.4:
MOVZX ESI, CX 
OR BL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV BL 
JMP .bb_main.5 
.bb_main.5:
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RCX], -60 
AND RCX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RCX], 0b1000000000000000000000000000000 # instrumentation
BSF RDX, qword ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RSI], CL 
ADC DIL, -69 
CLD  
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
