.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RBX], RBX 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RAX], DI 
CMOVNLE EBX, ESI 
AND RCX, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RCX] 
ADD AL, CL 
CBW  
CMP RDX, RBX 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RDX], -50 
MOV EDX, EAX 
JMP .bb_main.1 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
IMUL DX, word ptr [R14 + RAX] 
CMP DL, BL 
AND RSI, 0b1111111111111 # instrumentation
IMUL ESI, dword ptr [R14 + RSI], -107 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RSI], DX 
OR AL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV AL 
CMP CL, AL 
JNS .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
CMOVZ EAX, dword ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RCX], -108 
SAHF  
AND RCX, 0b1111111111111 # instrumentation
LOCK INC byte ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDI], AX 
AND RDI, 0b1111111111111 # instrumentation
CMP DIL, byte ptr [R14 + RDI] 
JMP .bb_main.3 
.bb_main.3:
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RDX], 85 
AND RAX, 0b1111111111111 # instrumentation
MOVSX AX, byte ptr [R14 + RAX] 
CMC  
AND RBX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RBX], 0b1000000000000000000000000000000 # instrumentation
BSF EDX, dword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RBX], 54 
CMOVNS RBX, RDX 
AND RBX, 0b1111111111111 # instrumentation
CMOVLE RDX, qword ptr [R14 + RBX] 
JNL .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
CMP EDI, ESI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
