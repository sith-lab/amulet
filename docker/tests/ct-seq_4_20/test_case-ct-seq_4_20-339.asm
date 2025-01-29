.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
LEA DX, qword ptr [RCX] 
AND RDX, 0b1111111111111 # instrumentation
ADC CX, word ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RBX], RDI 
CMOVO ECX, EAX 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RAX], -68 
JNS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
MUL dword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RAX], BL 
IMUL CL 
JMP .bb_main.2 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
MOV DL, byte ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RAX], AX 
AND RBX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RBX], BL 
AND RCX, 0b1111111111111 # instrumentation
IMUL dword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RDI], AX 
AND RCX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RCX], -23 
MOVZX RCX, DX 
JNZ .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RSI, 0b1111111111111 # instrumentation
ADD BX, word ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RSI], DI 
AND RAX, 0b1111111111111 # instrumentation
CMOVL ECX, dword ptr [R14 + RAX] 
SBB RAX, -1151983880 
DEC CL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
