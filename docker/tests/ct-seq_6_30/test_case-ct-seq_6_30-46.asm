.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RDX], -97 
ADD RAX, -1589991568 
SBB DIL, 71 
AND RSI, 0b1111111111111 # instrumentation
CMOVZ ECX, dword ptr [R14 + RSI] 
CMOVZ EAX, EDX 
AND RSI, 0b1111111111111 # instrumentation
ADC DL, byte ptr [R14 + RSI] 
JNO .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RBX], -64 
SUB RCX, -49 
IMUL DI 
ADD SIL, 75 # instrumentation
CMOVZ ESI, ECX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNL ESI, dword ptr [R14 + RDI] 
SBB RSI, -33 
CMOVZ CX, DI 
JMP .bb_main.2 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RAX], 351967180 
MOV AL, AL 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RDI], CL 
AND RCX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RCX], 61 
ADC AL, CL 
JMP .bb_main.3 
.bb_main.3:
MOVSX EBX, CL 
AND RDX, 0b1111111111111 # instrumentation
SBB DL, byte ptr [R14 + RDX] 
CMOVNZ BX, SI 
AND RDI, 0b1111111111111 # instrumentation
MOV CL, byte ptr [R14 + RDI] 
JMP .bb_main.4 
.bb_main.4:
AND RDX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RDX], CL 
CMOVLE RCX, RDX 
AND RAX, 0b1111111111111 # instrumentation
IMUL byte ptr [R14 + RAX] 
ADD SIL, -61 # instrumentation
JNS .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
AND RAX, 0b1111111111111 # instrumentation
MUL qword ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
MOVZX DX, byte ptr [R14 + RBX] 
CMOVBE CX, DX 
AND RDX, 0b1111111111111 # instrumentation
ADD EDX, dword ptr [R14 + RDX] 
IMUL EAX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
