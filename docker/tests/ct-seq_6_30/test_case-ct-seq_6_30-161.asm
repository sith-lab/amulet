.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
MOVZX EDI, word ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
SBB AL, byte ptr [R14 + RBX] 
SBB DL, -54 
AND RSI, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RSI], RDI 
JLE .bb_main.1 
JMP .bb_main.5 
.bb_main.1:
ADD SIL, 115 # instrumentation
CMOVO EDI, ECX 
AND RCX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RAX], 1 # instrumentation
ADD AL, DIL 
AND RDX, 0b1111111111111 # instrumentation
ADC RAX, qword ptr [R14 + RDX] 
MOV DI, DX 
JMP .bb_main.2 
.bb_main.2:
OR EBX, 0b1000000000000000000000000000000 # instrumentation
BSR EBX, EBX 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RCX], 117 
AND RDI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDI], CL 
NEG EBX 
INC BL 
AND RCX, 0b1111111111111 # instrumentation
NEG qword ptr [R14 + RCX] 
JMP .bb_main.3 
.bb_main.3:
SAHF  
AND RCX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RCX], AL 
AND RBX, 0b1111111111111 # instrumentation
IMUL dword ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVS ECX, dword ptr [R14 + RSI] 
JMP .bb_main.4 
.bb_main.4:
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RAX], -80 
AND RCX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RCX], RSI 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RDI], 104 
AND RCX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RCX], -30 
AND RDX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RDX], RAX 
JNP .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
AND RCX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RCX], RAX 
CLC  
ADC EAX, 111475816 
ADD RCX, RDI 
AND RAX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RAX], -43 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
