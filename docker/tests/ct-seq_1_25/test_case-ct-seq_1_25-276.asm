.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RDI], SIL 
AND RDX, 0b1111111111111 # instrumentation
CMOVO RAX, qword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RSI], -59 
AND RDX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RDX], AL 
AND RSI, 0b1111111111111 # instrumentation
IMUL dword ptr [R14 + RSI] 
MOV CL, DIL 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RBX], RSI 
AND RSI, 0b1111111111111 # instrumentation
CMOVS RAX, qword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNBE RBX, qword ptr [R14 + RCX] 
SUB RDI, RBX 
SUB CL, AL 
AND RBX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RBX], 1112328202 
AND RBX, 0b1111111111111 # instrumentation
CMOVNO SI, word ptr [R14 + RBX] 
ADD ECX, ESI 
DEC SI 
AND RDI, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RDI], 67 
AND RDI, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RDI], CX 
ADD RAX, RDI 
AND RBX, 0b1111111111111 # instrumentation
LOCK NEG word ptr [R14 + RBX] 
SUB DI, -46 
AND RAX, 0b1111111111111 # instrumentation
LOCK NEG byte ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
CMP DI, word ptr [R14 + RBX] 
SBB EAX, 1542500711 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RDI], 45 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
