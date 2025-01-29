.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, -7 # instrumentation
CMOVO BX, SI 
AND RBX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RBX], 0b1000000000000000000000000000000 # instrumentation
BSR ECX, dword ptr [R14 + RBX] 
OR EDI, 1 # instrumentation
AND EDX, EDI # instrumentation
SHR EDX, 1 # instrumentation
DIV EDI 
NEG DX 
AND RBX, 0b1111111111111 # instrumentation
CMOVB CX, word ptr [R14 + RBX] 
XCHG ESI, EAX 
AND RBX, 0b1111111111111 # instrumentation
SUB AL, byte ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RAX], -93 
AND RCX, 0b1111111111111 # instrumentation
MOVSX EBX, byte ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDX], 181160999 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RDX], 6 
AND RBX, 0b1111111111111 # instrumentation
LOCK DEC byte ptr [R14 + RBX] 
CMOVBE EDI, EDX 
SUB AX, -31003 
CMP DL, BL 
CMP AX, -16 
AND RSI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RSI], -215474142 
AND RSI, 0b1111111111111 # instrumentation
CMOVNO RDX, qword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RDI], AL 
CMP AX, 19102 
AND RCX, 0b1111111111111 # instrumentation
ADD DIL, 113 # instrumentation
CMOVS RSI, qword ptr [R14 + RCX] 
LAHF  
AND RDI, 0b1111111111111 # instrumentation
MUL dword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNL ESI, dword ptr [R14 + RBX] 
OR RCX, 0b1000000000000000000000000000000 # instrumentation
BSF RCX, RCX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
