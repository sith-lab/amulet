.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RCX], 90 
CMOVNS RBX, RAX 
CMOVNS EDI, ECX 
AND RCX, 0b1111111111111 # instrumentation
CMOVO RAX, qword ptr [R14 + RCX] 
JMP .bb_main.1 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RSI], 29 
INC RDX 
CMP AL, -127 
AND RSI, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RSI], DL 
CMP RBX, 42 
AND RAX, 0b1111111111111 # instrumentation
CMOVNS RAX, qword ptr [R14 + RAX] 
JMP .bb_main.2 
.bb_main.2:
NEG EDI 
AND RSI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RSI], 0b1000000000000000000000000000000 # instrumentation
BSF EDX, dword ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RSI], 68 
JMP .bb_main.3 
.bb_main.3:
MUL CX 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RDX], 25 
AND RBX, 0b1111111111111 # instrumentation
CMOVL RCX, qword ptr [R14 + RBX] 
MOV CL, DIL 
AND RDX, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RDX], EDI 
AND RDX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDX], AL 
JNL .bb_main.4 
JMP .bb_main.5 
.bb_main.4:
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RBX], 49 
CMOVNZ EBX, EDI 
IMUL DX, BX 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RCX], CL 
JMP .bb_main.5 
.bb_main.5:
ADD CL, DL 
AND RSI, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RSI], CL 
AND RDI, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDI], AL 
CMOVZ EDI, EAX 
AND RCX, 0b1111111111111 # instrumentation
ADD RDI, qword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDI], SI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
