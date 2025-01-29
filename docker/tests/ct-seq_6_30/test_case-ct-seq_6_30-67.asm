.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
OR BX, 1 # instrumentation
AND DX, BX # instrumentation
SHR DX, 1 # instrumentation
DIV BX 
CMP RAX, -15 
AND RCX, 0b1111111111111 # instrumentation
CMOVNL RAX, qword ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RAX], 82 
AND RDX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RDX], -124 
JMP .bb_main.1 
.bb_main.1:
ADD DIL, -95 # instrumentation
XCHG ESI, EAX 
CMOVO RCX, RSI 
AND RSI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RSI], AL 
MOVZX EAX, AL 
CMP BX, -116 
AND RDX, 0b1111111111111 # instrumentation
ADD RDX, qword ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVBE RAX, qword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
SBB RBX, qword ptr [R14 + RBX] 
CMP DL, -115 
ADC RAX, RBX 
ADD SI, DI 
MOVZX RAX, CL 
AND RCX, 0b1111111111111 # instrumentation
IMUL dword ptr [R14 + RCX] 
JNO .bb_main.2 
JMP .bb_main.5 
.bb_main.2:
MUL DIL 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RCX], 77 
AND RAX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RAX], -88 
MUL AX 
ADD DIL, 73 # instrumentation
JS .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
ADD SIL, -96 # instrumentation
SBB RBX, 12 
AND RDX, 0b1111111111111 # instrumentation
LOCK NEG dword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDX], -2059433321 
CMP AL, 75 
JMP .bb_main.4 
.bb_main.4:
MUL AL 
JMP .bb_main.5 
.bb_main.5:
OR DL, 1 # instrumentation
AND RDX, 0b1111111111111 # instrumentation
IMUL RBX, qword ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
MOVSX BX, byte ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
