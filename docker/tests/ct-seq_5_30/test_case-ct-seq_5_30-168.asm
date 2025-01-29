.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
LOCK NEG byte ptr [R14 + RDI] 
CMC  
CMOVP RAX, RCX 
CMP CL, 126 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RDX], RCX 
AND RAX, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RAX] 
JNB .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RAX], AL 
AND RDI, 0b1111111111111 # instrumentation
LOCK NEG byte ptr [R14 + RDI] 
MOV RDI, RDX 
AND RSI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RSI], AX 
SUB BX, -126 
SBB AL, BL 
AND RBX, 0b1111111111111 # instrumentation
CMP SIL, byte ptr [R14 + RBX] 
OR EDX, 0b1000000000000000000000000000000 # instrumentation
BSR EDI, EDX 
ADD DIL, 30 # instrumentation
JNBE .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
CMOVNB EAX, dword ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RSI], RAX 
CMP BL, DL 
IMUL DX, DX, -122 
MOVZX SI, BL 
CMP DL, 72 
AND RSI, 0b1111111111111 # instrumentation
LOCK INC word ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RBX], AL 
LOOPE .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
AND RCX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RCX], 0b1000000000000000000000000000000 # instrumentation
BSR EDX, dword ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
IMUL DX, word ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RBX], 121 
JMP .bb_main.4 
.bb_main.4:
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RBX], -63 
AND RCX, 0b1111111111111 # instrumentation
SUB RDI, qword ptr [R14 + RCX] 
CMOVNBE RDI, RBX 
AND RDX, 0b1111111111111 # instrumentation
ADD EDX, dword ptr [R14 + RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
