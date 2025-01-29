.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RDI], -128 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RBX], 28 
AND RDI, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RDI], 5 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RBX], RDX 
AND RDX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RDX], CL 
CMOVP RDX, RAX 
JNP .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
MOV SIL, CL 
AND RDI, 0b1111111111111 # instrumentation
MUL dword ptr [R14 + RDI] 
ADD DIL, -7 # instrumentation
MOVSX SI, BL 
CMOVNLE BX, DX 
AND RSI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RSI], EDI 
JRCXZ .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDX], 0b1000000000000000 # instrumentation
BSR CX, word ptr [R14 + RDX] 
ADD DIL, 65 # instrumentation
SBB RDI, RSI 
MOV CL, DL 
AND RDI, 0b1111111111111 # instrumentation
CMOVNBE DI, word ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
CMOVO SI, word ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
ADD RBX, qword ptr [R14 + RAX] 
JMP .bb_main.3 
.bb_main.3:
ADD DIL, -59 # instrumentation
XCHG BX, AX 
CMOVP EDI, EAX 
CMOVNBE RCX, RDI 
MOVZX ECX, CL 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RAX], EAX 
CMP SI, SI 
JNB .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RBX, 0b1111111111111 # instrumentation
IMUL DX, DI 
ADD SIL, -91 # instrumentation
CMOVLE RAX, RCX 
AND RSI, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RSI], DL 
AND RBX, 0b1111111111111 # instrumentation
LOCK DEC byte ptr [R14 + RBX] 
ADC AX, -1078 
ADD RDI, RDI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
