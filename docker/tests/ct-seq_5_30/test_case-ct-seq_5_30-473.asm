.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
DEC EAX 
AND RDX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDX], EAX 
AND RBX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RBX], -95 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RDX], 78 
AND RDI, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RDI], BL 
JNS .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNBE ECX, dword ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVS RDI, qword ptr [R14 + RCX] 
SBB AX, -20231 
CMOVNZ RCX, RDI 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RDI], RSI 
JMP .bb_main.2 
.bb_main.2:
ADD DIL, -62 # instrumentation
CMOVNB ESI, EAX 
AND RDI, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RDI], -10 
AND RSI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RSI], 565739334 
AND RDI, 0b1111111111111 # instrumentation
CMOVO RCX, qword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RBX], DL 
JNB .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RDI, 0b1111111111111 # instrumentation
INC dword ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
LOCK NEG byte ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RAX], 1 # instrumentation
AND EDX, dword ptr [R14 + RAX] # instrumentation
SHR EDX, 1 # instrumentation
DIV dword ptr [R14 + RAX] 
NEG RBX 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RAX], 95 
MOVSX SI, AL 
LEA SI, qword ptr [RDI + RAX + 42793] 
JB .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
CMP EDI, 23 
AND RDI, 0b1111111111111 # instrumentation
IMUL EBX, dword ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
IMUL DX, word ptr [R14 + RAX], 78 
DEC EAX 
DEC DL 
AND RDI, 0b1111111111111 # instrumentation
MOVSX RBX, word ptr [R14 + RDI] 
SBB RDX, 54 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
