.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, 73 # instrumentation
SBB EDX, 64 
AND RDI, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RDI], ECX 
AND RBX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RBX], BL 
OR BL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV BL 
ADD SIL, 48 # instrumentation
JNB .bb_main.1 
JMP .bb_main.5 
.bb_main.1:
ADD SIL, 112 # instrumentation
SBB AL, 65 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RCX], BL 
MOVZX EDX, BL 
AND RCX, 0b1111111111111 # instrumentation
CMOVNP BX, word ptr [R14 + RCX] 
CMOVNO RBX, RBX 
CMOVP SI, CX 
SBB ECX, EBX 
JNS .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RDI], AL 
ADC BL, AL 
CMOVZ EAX, EBX 
AND RSI, 0b1111111111111 # instrumentation
ADD CX, word ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
MUL word ptr [R14 + RSI] 
CWD  
JMP .bb_main.3 
.bb_main.3:
AND RAX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RAX], AL 
AND RBX, 0b1111111111111 # instrumentation
INC word ptr [R14 + RBX] 
CMC  
AND RDI, 0b1111111111111 # instrumentation
SBB DI, word ptr [R14 + RDI] 
JMP .bb_main.4 
.bb_main.4:
AND RSI, 0b1111111111111 # instrumentation
CMOVNP AX, word ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
CMOVB RDI, qword ptr [R14 + RSI] 
OR RDI, 0b1000000000000000000000000000000 # instrumentation
BSR RBX, RDI 
AND RSI, 0b1111111111111 # instrumentation
MOVZX RBX, byte ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RDX], AX 
JMP .bb_main.5 
.bb_main.5:
AND RDX, 0b1111111111111 # instrumentation
ADD RCX, qword ptr [R14 + RDX] 
CMOVO EDI, EDI 
CMOVLE RCX, RCX 
LEA RDX, qword ptr [RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
