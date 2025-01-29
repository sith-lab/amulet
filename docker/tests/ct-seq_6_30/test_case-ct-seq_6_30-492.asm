.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
SBB SI, word ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
MOVSX ECX, word ptr [R14 + RDX] 
SBB EBX, ESI 
JNS .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RBX], BL 
SBB CX, 97 
SBB RSI, 52 
MOV CL, AL 
AND RAX, 0b1111111111111 # instrumentation
ADC DL, byte ptr [R14 + RAX] 
MOVZX RDI, DIL 
IMUL EDX, ESI 
JMP .bb_main.2 
.bb_main.2:
ADD DIL, -66 # instrumentation
ADC DL, CL 
AND RBX, 0b1111111111111 # instrumentation
CMOVNP RSI, qword ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RSI], EAX 
JNB .bb_main.3 
JMP .bb_main.5 
.bb_main.3:
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RDI], -17 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RDX], 0 
CMOVO AX, DI 
AND RSI, 0b1111111111111 # instrumentation
INC word ptr [R14 + RSI] 
SBB AL, -3 
MOV ESI, 419964879 
MUL RSI 
AND RAX, 0b1111111111111 # instrumentation
ADD RDI, qword ptr [R14 + RAX] 
LOOPNE .bb_main.4 
JMP .bb_main.5 
.bb_main.4:
OR BL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV BL 
AND RBX, 0b1111111111111 # instrumentation
MOVSX EDX, word ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDI], CL 
ADD ECX, -3 
CMP RBX, -92 
JS .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RBX], RAX 
AND RBX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RBX], RDI 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RDX], DX 
AND RDI, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RDI], 116 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
