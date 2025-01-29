.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MOV EDX, -881898562 
OR DIL, DL 
MOVZX EBX, CL 
AND RBX, 0b1111111111111 # instrumentation
ADC RSI, qword ptr [R14 + RBX] 
CMOVNB EAX, ESI 
CMPXCHG CX, SI 
CMOVNBE AX, SI 
ADC BL, 99 
CMOVNO BX, DI 
CMP RAX, -116 
XOR RSI, RCX 
JMP .bb_main.1 
.bb_main.1:
ADD SIL, -94 # instrumentation
CMOVO AX, BX 
AND RDX, 0b1111111111111 # instrumentation
ADD CX, word ptr [R14 + RDX] 
SBB AX, 14651 
AND EAX, 188160667 
CMOVS RSI, RDX 
MOVZX RDX, CL 
AND AL, 89 
SETNZ CL 
MOVZX SI, SIL 
SBB CL, DL 
OR RBX, 34 
ADD RCX, RCX 
AND RAX, 0b1111111111111 # instrumentation
LOCK XADD word ptr [R14 + RAX], AX 
JB .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
ADD SIL, 121 # instrumentation
DEC BX 
ADC AX, -26 
ADD AX, 19739 
AND RDI, 0b1111111111111 # instrumentation
MUL word ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNBE CX, CX 
AND RDX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RDX], DIL 
AND RSI, 0b1111111111111 # instrumentation
CMPXCHG dword ptr [R14 + RSI], EDX 
AND RBX, 0b1111111111111 # instrumentation
LOCK OR dword ptr [R14 + RBX], EBX 
AND RAX, 0b1111111111111 # instrumentation
LOCK AND qword ptr [R14 + RAX], 22 
LEA CX, qword ptr [RBX] 
SBB BL, 85 
ADC BL, DL 
SUB AL, 57 
AND RDX, 0b1111111111111 # instrumentation
CMOVB AX, word ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVZ RDX, qword ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
