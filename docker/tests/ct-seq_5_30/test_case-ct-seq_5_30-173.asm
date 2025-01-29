.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, -93 # instrumentation
CMOVNO EDX, EBX 
CMOVO RBX, RCX 
CMOVLE BX, SI 
CMOVNS EAX, EBX 
CMOVNZ RSI, RDI 
XCHG BX, AX 
MOVZX DI, CL 
LOOPNE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
MOVZX EBX, word ptr [R14 + RDI] 
SUB SIL, 79 
AND RSI, 0b1111111111111 # instrumentation
ADC RSI, qword ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RSI], 95 
INC BL 
SUB EAX, -1691653138 
ADC SIL, -51 
JNS .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RDX], -31 
AND RAX, 0b1111111111111 # instrumentation
ADC RAX, qword ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RDI], RBX 
AND RDI, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RDI], AL 
AND RAX, 0b1111111111111 # instrumentation
MOVZX EDX, word ptr [R14 + RAX] 
JNS .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
AND RDX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RDX], CL 
AND RDI, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RDI], 61 
NEG CL 
CMOVZ RBX, RDX 
AND RSI, 0b1111111111111 # instrumentation
CMOVNO RSI, qword ptr [R14 + RSI] 
MOV DX, SI 
JMP .bb_main.4 
.bb_main.4:
BSWAP EAX 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RBX], RBX 
AND RAX, 0b1111111111111 # instrumentation
SBB DL, byte ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
