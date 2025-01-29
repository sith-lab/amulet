.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
CMOVNL DX, word ptr [R14 + RCX] 
SBB EBX, EAX 
AND RDX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RDX], -8 
AND RBX, 0b1111111111111 # instrumentation
CMOVB RAX, qword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK NEG byte ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVZ BX, word ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNO RAX, qword ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RSI], 108 
SBB BL, AL 
CMP AL, 96 
ADC CL, DL 
AND RSI, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RSI], -47 
AND RBX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RBX], 87 
JLE .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
SUB RAX, -1358631027 
CMOVNL RDI, RDX 
AND RCX, 0b1111111111111 # instrumentation
CMOVNO SI, word ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RDI], BL 
SUB EDX, ESI 
JNL .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
OR AL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV AL 
ADD SIL, 59 # instrumentation
MOVSX EDI, CL 
JBE .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
MOV AL, -112 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RBX], EBX 
OR EAX, 0b1000000000000000000000000000000 # instrumentation
BSR ECX, EAX 
JMP .bb_main.4 
.bb_main.4:
ADD DIL, -17 # instrumentation
CMOVL DX, SI 
AND RDI, 0b1111111111111 # instrumentation
NEG dword ptr [R14 + RDI] 
XCHG RDX, RAX 
MOVSX EAX, SIL 
ADC DI, -15 
AND RDX, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
