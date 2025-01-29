.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
ADC BX, word ptr [R14 + RDI] 
CMP BL, DL 
SUB DIL, 9 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RAX], RAX 
IMUL RAX, RDX 
CMP AX, 649 
AND RCX, 0b1111111111111 # instrumentation
CMOVNLE ECX, dword ptr [R14 + RCX] 
JMP .bb_main.1 
.bb_main.1:
OR EAX, 0b1000000000000000000000000000000 # instrumentation
BSR EDX, EAX 
AND RDX, 0b1111111111111 # instrumentation
NEG dword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDX], 25 
OR CL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV CL 
ADD RAX, -2113401043 
SBB BX, -2 
JMP .bb_main.2 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
DEC dword ptr [R14 + RAX] 
MUL BL 
ADD DIL, 101 # instrumentation
CMOVNLE EDX, EBX 
JP .bb_main.3 
JMP .bb_main.5 
.bb_main.3:
AND RSI, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RSI], 99 
AND RDI, 0b1111111111111 # instrumentation
ADD SIL, 88 # instrumentation
CMOVO EDX, dword ptr [R14 + RDI] 
LAHF  
JMP .bb_main.4 
.bb_main.4:
ADD DIL, -47 # instrumentation
ADC SI, -57 
CMOVNLE RCX, RDI 
AND RDI, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RDI] 
ADD BL, AL 
AND RAX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RAX], BL 
MOVZX DX, CL 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RDX], CL 
JRCXZ .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
AND RDI, 0b1111111111111 # instrumentation
CMOVB EAX, dword ptr [R14 + RDI] 
NEG RDI 
AND RDI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDI], CL 
AND RBX, 0b1111111111111 # instrumentation
MOVSX EDI, byte ptr [R14 + RBX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
