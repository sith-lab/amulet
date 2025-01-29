.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CMP AX, -111 
AND RAX, 0b1111111111111 # instrumentation
IMUL SI, word ptr [R14 + RAX], 80 
IMUL EAX, ESI, -90 
AND RSI, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RSI], -41 
INC EDI 
AND RCX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RCX], 123 
XCHG BL, AL 
SUB EAX, -106596474 
JNO .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
ADC ECX, dword ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
ADC EAX, dword ptr [R14 + RBX] 
SBB DX, CX 
STC  
CMOVL RBX, RAX 
AND RBX, 0b1111111111111 # instrumentation
CMOVP RBX, qword ptr [R14 + RBX] 
JMP .bb_main.2 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RDI], -109 
AND RDI, 0b1111111111111 # instrumentation
CMOVS AX, word ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNO AX, word ptr [R14 + RCX] 
JMP .bb_main.3 
.bb_main.3:
AND RDI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDI], EAX 
CMP AX, -1960 
AND RSI, 0b1111111111111 # instrumentation
ADC CX, word ptr [R14 + RSI] 
CMOVNBE EDX, EDI 
ADC DL, DL 
AND RSI, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RSI] 
ADC SIL, 87 
CMOVS DI, SI 
OR DIL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV DIL 
AND RBX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RBX], RDI 
AND RAX, 0b1111111111111 # instrumentation
ADD SI, word ptr [R14 + RAX] 
JLE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RBX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RBX], 0b1000000000000000000000000000000 # instrumentation
BSF RCX, qword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
IMUL byte ptr [R14 + RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
