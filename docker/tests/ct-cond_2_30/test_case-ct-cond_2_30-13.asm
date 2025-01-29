.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
CMOVNBE ESI, dword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RCX], CX 
CMP RAX, 616157993 
AND RAX, 0b1111111111111 # instrumentation
CMOVNBE RBX, qword ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
MOVZX ECX, word ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDI], EDI 
SUB EAX, -532251172 
ADC EAX, -931726557 
OR EAX, 0b1000000000000000000000000000000 # instrumentation
BSR EDX, EAX 
ADD SIL, 79 # instrumentation
JLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD DIL, -102 # instrumentation
SBB AL, BL 
AND RDI, 0b1111111111111 # instrumentation
IMUL EAX, dword ptr [R14 + RDI] 
ADD SIL, -44 # instrumentation
CMOVS ESI, EAX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNZ DX, word ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
IMUL dword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
CMOVO ECX, dword ptr [R14 + RBX] 
STC  
SBB AX, 10191 
AND RBX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RBX], 1 # instrumentation
AND DX, word ptr [R14 + RBX] # instrumentation
SHR DX, 1 # instrumentation
DIV word ptr [R14 + RBX] 
SUB AX, -32410 
MOV DIL, AL 
MOV CL, -30 
AND RBX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RBX], DIL 
ADD EDX, -26 
SUB EDX, EAX 
SUB EAX, -1056989649 
AND RDX, 0b1111111111111 # instrumentation
IMUL qword ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVL CX, word ptr [R14 + RDI] 
CMOVNS RDI, RSI 
AND RDI, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RDI], -73 
AND RDI, 0b1111111111111 # instrumentation
CMOVZ SI, word ptr [R14 + RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
