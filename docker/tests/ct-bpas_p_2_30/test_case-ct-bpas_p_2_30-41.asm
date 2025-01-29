.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
NEG RSI 
IMUL RCX, RCX, 14 
AND RAX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RAX], -125 
AND RBX, 0b1111111111111 # instrumentation
SUB SI, word ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVL AX, word ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVZ SI, word ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNL DI, word ptr [R14 + RBX] 
CWD  
AND RAX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RAX], ECX 
AND RCX, 0b1111111111111 # instrumentation
CMOVLE RCX, qword ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RBX], DL 
AND RSI, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RSI], CL 
MOV AL, CL 
AND RDI, 0b1111111111111 # instrumentation
SBB AL, byte ptr [R14 + RDI] 
JNBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD DIL, BL 
MOVZX EAX, DI 
AND RSI, 0b1111111111111 # instrumentation
SUB SI, word ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RDI], 14 
AND RSI, 0b1111111111111 # instrumentation
CMOVBE BX, word ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
IMUL EAX, dword ptr [R14 + RDX], -17 
AND RDI, 0b1111111111111 # instrumentation
CMOVNO EAX, dword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
CMOVS ESI, dword ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RDX] 
MOV EBX, -232758203 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RSI], -101 
ADC EAX, -975949209 
AND RCX, 0b1111111111111 # instrumentation
LOCK INC qword ptr [R14 + RCX] 
CMOVLE DX, DI 
AND RAX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RAX], RDX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
