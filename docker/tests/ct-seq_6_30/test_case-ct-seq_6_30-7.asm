.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RBX], EAX 
AND RBX, 0b1111111111111 # instrumentation
MUL word ptr [R14 + RBX] 
OR AX, 1 # instrumentation
AND DX, AX # instrumentation
SHR DX, 1 # instrumentation
DIV AX 
AND RAX, 0b1111111111111 # instrumentation
CMOVP RBX, qword ptr [R14 + RAX] 
JMP .bb_main.1 
.bb_main.1:
ADD SIL, 22 # instrumentation
CMC  
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RAX], RBX 
ADC BL, 3 
JMP .bb_main.2 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RDX], DIL 
AND RDX, 0b1111111111111 # instrumentation
CMOVNO RDX, qword ptr [R14 + RDX] 
ADD RBX, RDX 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RDX], SIL 
CMOVO EDI, ECX 
JMP .bb_main.3 
.bb_main.3:
AND RCX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RCX], AL 
AND RBX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RBX], 70 
CMP RBX, RDI 
AND RDX, 0b1111111111111 # instrumentation
MOVSX CX, byte ptr [R14 + RDX] 
MOVSX BX, BL 
JNP .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RDI, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RDI], DIL 
AND RDI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDI], BX 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RSI], -54 
AND RDX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RDX], RSI 
ADD SIL, 121 
AND RAX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RAX], 0b1000000000000000000000000000000 # instrumentation
BSF RDX, qword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RDX], -70 
JMP .bb_main.5 
.bb_main.5:
AND RCX, 0b1111111111111 # instrumentation
CMOVNB DX, word ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RBX], BL 
IMUL ECX, ESI 
SUB EAX, EDI 
ADD EDX, -118 
AND RDI, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RDI], CX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
