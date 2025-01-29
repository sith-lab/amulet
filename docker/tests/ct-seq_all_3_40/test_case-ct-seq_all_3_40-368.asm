.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
OR AL, byte ptr [R14 + RDX] 
TEST SIL, 124 
OR EBX, 0b1000000000000000000000000000000 # instrumentation
BSF EDX, EBX 
AND BL, 22 
AND RDI, 0b1111111111111 # instrumentation
CMOVNB EAX, dword ptr [R14 + RDI] 
NEG BL 
AND RCX, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RCX], DL 
AND RAX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RAX], EAX 
SETO BL 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RAX], -100 
AND RCX, 0b1111111111111 # instrumentation
CMOVNB RAX, qword ptr [R14 + RCX] 
TEST RCX, RBX 
AND RBX, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RBX], CL 
SETNS CL 
JNL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD SIL, 66 # instrumentation
ADC RAX, 24 
AND RBX, 0b1111111111111 # instrumentation
LOCK CMPXCHG byte ptr [R14 + RBX], DL 
SETNB DIL 
ADD ECX, -5 
MOV ECX, 421781460 
CMOVO AX, CX 
IMUL DL 
XADD AX, SI 
AND RAX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RAX], DI 
NOP  
AND RDX, 0b1111111111111 # instrumentation
SETL byte ptr [R14 + RDX] 
ADC EDI, EDI 
CMOVB DX, CX 
SETNO DL 
AND RCX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RCX] 
JMP .bb_main.2 
.bb_main.2:
OR DL, -115 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RDI], ECX 
AND RAX, 0b1111111111111 # instrumentation
LOCK NOT byte ptr [R14 + RAX] 
SUB AX, -2737 
SUB AL, DL 
AND AL, 44 
OR CX, CX 
CMOVNO RCX, RDX 
AND RSI, 0b1111111111111 # instrumentation
CMOVL EAX, dword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
MUL dword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
SBB RAX, qword ptr [R14 + RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
