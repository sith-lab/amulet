.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RAX], DIL 
XCHG RSI, RSI 
AND RSI, 0b1111111111111 # instrumentation
MUL dword ptr [R14 + RSI] 
ADD SIL, -34 # instrumentation
CDQ  
JNS .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
ADD SIL, -43 # instrumentation
ADC EAX, -1119376765 
SUB BX, -121 
AND RDX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDX], DL 
AND RBX, 0b1111111111111 # instrumentation
LOCK NEG word ptr [R14 + RBX] 
JMP .bb_main.2 
.bb_main.2:
DEC ECX 
SUB AX, -20932 
MOV CL, 82 
AND RDI, 0b1111111111111 # instrumentation
CMOVNB DI, word ptr [R14 + RDI] 
OR CX, 1 # instrumentation
AND DX, CX # instrumentation
SHR DX, 1 # instrumentation
DIV CX 
SUB DIL, 124 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RDI], AL 
CMOVNO EBX, EAX 
JMP .bb_main.3 
.bb_main.3:
ADD DIL, 24 # instrumentation
CMOVZ RAX, RAX 
MOVZX EAX, DL 
AND RDI, 0b1111111111111 # instrumentation
LOCK NEG qword ptr [R14 + RDI] 
CMP DL, CL 
AND RDI, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RDI], -60 
ADD DIL, 63 
AND RSI, 0b1111111111111 # instrumentation
CMOVB EAX, dword ptr [R14 + RSI] 
CMOVNS RAX, RBX 
MOV BX, AX 
SBB RAX, 82 
JMP .bb_main.4 
.bb_main.4:
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RCX], -52 
AND RAX, 0b1111111111111 # instrumentation
ADC CL, byte ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RCX], BL 
INC RBX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
