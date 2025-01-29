.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RDI], -103 
MUL SI 
SUB CL, 9 
AND RAX, 0b1111111111111 # instrumentation
CMOVS EAX, dword ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RBX], -71 
OR ECX, 0b1000000000000000000000000000000 # instrumentation
BSF ECX, ECX 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RBX], -16 
JP .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
ADD SIL, -47 # instrumentation
JZ .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
ADD DIL, -21 # instrumentation
ADC SIL, -12 
AND RSI, 0b1111111111111 # instrumentation
LOCK DEC dword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
ADD RDI, qword ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
MOVSX RDX, word ptr [R14 + RAX] 
SBB DI, 5 
AND RSI, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RSI], 30 
AND RCX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RCX], RSI 
JMP .bb_main.3 
.bb_main.3:
AND RDI, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RDI], 1 # instrumentation
MOV AX, 1 # instrumentation
DIV byte ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
CMOVS EBX, dword ptr [R14 + RDX] 
ADC AL, 15 
AND RAX, 0b1111111111111 # instrumentation
CMOVNS RSI, qword ptr [R14 + RAX] 
JMP .bb_main.4 
.bb_main.4:
AND RBX, 0b1111111111111 # instrumentation
NEG qword ptr [R14 + RBX] 
MOV CL, CL 
INC ESI 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RAX], RCX 
AND RSI, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RSI], BL 
SUB DIL, SIL 
IMUL DL 
JMP .bb_main.5 
.bb_main.5:
SUB ESI, ESI 
AND RCX, 0b1111111111111 # instrumentation
MUL dword ptr [R14 + RCX] 
INC DI 
AND RDI, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RDI], BX 
CMOVP ESI, ECX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
