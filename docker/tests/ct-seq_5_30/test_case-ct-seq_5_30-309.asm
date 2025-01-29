.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
SUB EAX, 1094488559 
ADC CL, 71 
AND RCX, 0b1111111111111 # instrumentation
CMOVLE RAX, qword ptr [R14 + RCX] 
CMOVLE SI, BX 
AND RAX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RAX], -1529471610 
XCHG RAX, RAX 
JL .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RSI], ESI 
MOVZX ESI, CL 
MOVZX RDI, DX 
MOV BX, DI 
AND RCX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RCX], -1006125561 
AND RAX, 0b1111111111111 # instrumentation
LOCK INC dword ptr [R14 + RAX] 
JMP .bb_main.2 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
CMOVNS ECX, dword ptr [R14 + RSI] 
ADC RAX, -1407378102 
SUB EAX, 251984279 
NEG CL 
CLD  
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RDX], -74 
IMUL ECX, EDI 
JMP .bb_main.3 
.bb_main.3:
OR AL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV AL 
AND RAX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RAX], 6 
CMC  
AND RCX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RCX], -103 
AND RDX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RDX], RCX 
LEA EAX, qword ptr [RDI] 
JNS .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RBX], CX 
AND RDX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RDX], -95 
SUB BL, -62 
DEC DI 
AND RAX, 0b1111111111111 # instrumentation
CMOVBE CX, word ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
