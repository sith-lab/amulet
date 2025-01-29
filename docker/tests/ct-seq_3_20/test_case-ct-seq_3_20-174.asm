.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
CMOVNO ESI, dword ptr [R14 + RBX] 
SBB RAX, 2011265665 
AND RDX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDX], BL 
AND RCX, 0b1111111111111 # instrumentation
CMOVL ECX, dword ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RAX], 72 
JMP .bb_main.1 
.bb_main.1:
ADD DIL, 17 # instrumentation
XCHG AL, DL 
SBB EAX, 976793830 
AND RSI, 0b1111111111111 # instrumentation
CMOVZ RDI, qword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNZ CX, word ptr [R14 + RDX] 
ADC EAX, -976679250 
AND RDX, 0b1111111111111 # instrumentation
SBB ESI, dword ptr [R14 + RDX] 
JNL .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RCX], DIL 
AND RDI, 0b1111111111111 # instrumentation
MOV BL, byte ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
INC dword ptr [R14 + RDX] 
MUL ESI 
AND RCX, 0b1111111111111 # instrumentation
CMOVNS DX, word ptr [R14 + RCX] 
CMOVNS EDX, EBX 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RDX], -87 
AND RAX, 0b1111111111111 # instrumentation
CMOVZ EAX, dword ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RCX], 0b1000000000000000 # instrumentation
BSF BX, word ptr [R14 + RCX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
