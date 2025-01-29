.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RBX], -8 
AND RSI, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RSI], -71 
SBB RBX, -95 
CMP AL, DL 
JMP .bb_main.1 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
CMOVNO EAX, dword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RDI], RDI 
XCHG DL, BL 
CMOVZ EDX, EDI 
AND RDX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDX], 0b1000000000000000000000000000000 # instrumentation
BSF RCX, qword ptr [R14 + RDX] 
MUL EAX 
AND RSI, 0b1111111111111 # instrumentation
SUB AL, byte ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RSI], 110 
AND RCX, 0b1111111111111 # instrumentation
CMOVL RSI, qword ptr [R14 + RCX] 
JP .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RBX], -114 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RDI], -39 
AND RSI, 0b1111111111111 # instrumentation
SBB SI, word ptr [R14 + RSI] 
CMOVZ EDI, EDI 
AND RBX, 0b1111111111111 # instrumentation
CMOVNS EDI, dword ptr [R14 + RBX] 
CMOVNS RDI, RCX 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RAX], -93 
SBB CL, -40 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RDX], 55 
JMP .bb_main.3 
.bb_main.3:
ADD AL, BL 
AND RBX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RBX], RDX 
MOV RAX, RBX 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RDI], EAX 
CMOVNL EDX, EDX 
JMP .bb_main.4 
.bb_main.4:
AND RAX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RAX], AL 
INC RBX 
AND RCX, 0b1111111111111 # instrumentation
CMP SIL, byte ptr [R14 + RCX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
