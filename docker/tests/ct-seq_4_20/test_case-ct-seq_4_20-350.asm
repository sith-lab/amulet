.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
LOCK NEG byte ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RAX], EDI 
AND RBX, 0b1111111111111 # instrumentation
CMOVNZ RBX, qword ptr [R14 + RBX] 
SUB AL, -88 
AND RDI, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RDI], 127 
JNP .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
CMOVNS EDX, dword ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RBX], -90 
JLE .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RBX], EDX 
AND RAX, 0b1111111111111 # instrumentation
CMOVLE AX, word ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RCX], 1 # instrumentation
AND EDX, dword ptr [R14 + RCX] # instrumentation
SHR EDX, 1 # instrumentation
DIV dword ptr [R14 + RCX] 
ADD SIL, 92 # instrumentation
CMOVO RDI, RCX 
AND RDI, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
MOVZX RBX, word ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RSI] 
MOVZX EDI, DI 
JMP .bb_main.3 
.bb_main.3:
AND RCX, 0b1111111111111 # instrumentation
LOCK INC dword ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
MOV DL, byte ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
MOVSX RBX, word ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RBX], AL 
DEC RDX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
