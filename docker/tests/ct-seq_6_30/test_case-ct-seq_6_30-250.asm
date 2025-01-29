.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
IMUL DI, BX, 53 
XCHG CX, SI 
AND RAX, 0b1111111111111 # instrumentation
CMP SI, word ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNB RSI, qword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNZ EAX, dword ptr [R14 + RDI] 
JMP .bb_main.1 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
CMOVP AX, word ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
ADC DIL, byte ptr [R14 + RBX] 
CMP RSI, RSI 
CMOVBE RDX, RSI 
DEC BL 
AND RCX, 0b1111111111111 # instrumentation
CMOVNBE AX, word ptr [R14 + RCX] 
JMP .bb_main.2 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RSI], RDI 
JP .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
ADD SIL, 92 # instrumentation
CMOVNB EAX, EDI 
SUB EDX, EDI 
ADC RAX, 1465201174 
AND RSI, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RSI], 48 
IMUL AL 
JMP .bb_main.4 
.bb_main.4:
MOV DL, DIL 
ADD EAX, EAX 
AND RDI, 0b1111111111111 # instrumentation
ADD BL, byte ptr [R14 + RDI] 
DEC RAX 
AND RCX, 0b1111111111111 # instrumentation
CMOVLE RSI, qword ptr [R14 + RCX] 
JMP .bb_main.5 
.bb_main.5:
AND RAX, 0b1111111111111 # instrumentation
CMP DIL, byte ptr [R14 + RAX] 
CMOVNP EAX, EDX 
SBB EDI, EBX 
AND RCX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RCX], 1 # instrumentation
MOV AX, 1 # instrumentation
DIV byte ptr [R14 + RCX] 
ADD DIL, -29 # instrumentation
LEA EDX, qword ptr [RDI] 
CMOVLE RDI, RCX 
AND RSI, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RSI], -38 
AND RSI, 0b1111111111111 # instrumentation
CMOVS EDI, dword ptr [R14 + RSI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
