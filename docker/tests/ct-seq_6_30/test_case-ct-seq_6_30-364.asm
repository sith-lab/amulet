.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
CMOVS EDX, dword ptr [R14 + RDX] 
MUL BX 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RDX], DX 
OR CX, 0b1000000000000000 # instrumentation
BSR BX, CX 
ADD SIL, 2 # instrumentation
JNB .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
CMOVLE SI, word ptr [R14 + RBX] 
ADD EAX, -1381363265 
ADD AL, 32 
CMOVP RDX, RSI 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RAX], -85 
JNZ .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
CMOVO ESI, dword ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RAX], -18 
MUL DL 
AND RAX, 0b1111111111111 # instrumentation
LOCK NEG qword ptr [R14 + RAX] 
JMP .bb_main.3 
.bb_main.3:
AND RAX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RAX], 0b1000000000000000000000000000000 # instrumentation
BSF RBX, qword ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNBE RBX, qword ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RBX], -274731803 
AND RBX, 0b1111111111111 # instrumentation
MOV BL, byte ptr [R14 + RBX] 
CMOVZ DI, DX 
AND RCX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RCX], BL 
JMP .bb_main.4 
.bb_main.4:
NEG DL 
AND RSI, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RSI], 25 
MOVSX ESI, BL 
CMOVNL ECX, EDI 
AND RCX, 0b1111111111111 # instrumentation
MOVSX BX, byte ptr [R14 + RCX] 
ADD EDI, -109 
AND RSI, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RSI], CL 
SBB AX, -20 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RCX], EAX 
JLE .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
AND RDX, 0b1111111111111 # instrumentation
CMOVL RSI, qword ptr [R14 + RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
