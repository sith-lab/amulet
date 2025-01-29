.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RDX], -109 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RAX], -87 
MUL EBX 
JMP .bb_main.1 
.bb_main.1:
CLC  
AND RBX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RBX], DI 
JNB .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
MUL DI 
AND RCX, 0b1111111111111 # instrumentation
CMOVP EAX, dword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
IMUL DX, word ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RAX], CL 
AND RCX, 0b1111111111111 # instrumentation
NEG qword ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RCX], 76 
ADD RSI, RCX 
JNS .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
AND RAX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RAX], -25 
ADD AX, 11336 
ADC AX, CX 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RDX], SI 
AND RAX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RAX], -89 
AND RCX, 0b1111111111111 # instrumentation
LOCK NEG dword ptr [R14 + RCX] 
MOV EAX, 1825612970 
JB .bb_main.4 
JMP .bb_main.5 
.bb_main.4:
AND RSI, 0b1111111111111 # instrumentation
LOCK NEG dword ptr [R14 + RSI] 
NEG DL 
MUL BL 
ADD BX, DI 
SUB RBX, 73 
CMOVLE BX, AX 
MOV RAX, RSI 
AND RAX, 0b1111111111111 # instrumentation
IMUL RDX, qword ptr [R14 + RAX] 
ADD DIL, 30 # instrumentation
JNLE .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
ADD SIL, 45 # instrumentation
MOV RDI, RDI 
CMOVNZ EDX, EDX 
AND RSI, 0b1111111111111 # instrumentation
INC word ptr [R14 + RSI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
