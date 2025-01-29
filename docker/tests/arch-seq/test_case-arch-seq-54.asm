.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
LOCK XOR dword ptr [R14 + RCX], ESI 
SBB EAX, 62 
AND RCX, 0b1111111111111 # instrumentation
MUL dword ptr [R14 + RCX] 
ADD SIL, -37 # instrumentation
CMOVNLE ECX, EAX 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RSI], ESI 
SUB DI, -68 
AND RCX, 0b1111111111111 # instrumentation
CMOVO DX, word ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
NOT word ptr [R14 + RCX] 
INC RBX 
STC  
JMP .bb_main.1 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
IMUL word ptr [R14 + RCX] 
CMPXCHG ECX, EAX 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RDX], 57 
TEST CL, BL 
CMOVL EDI, ESI 
OR DL, 110 
SETL BL 
AND RAX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RAX], EBX 
AND RSI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RSI], 1 # instrumentation
AND DX, word ptr [R14 + RSI] # instrumentation
SHR DX, 1 # instrumentation
DIV word ptr [R14 + RSI] 
ADD DIL, -121 # instrumentation
MOV EAX, EBX 
SETNZ AL 
JNBE .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RBX], -108 
XOR AL, CL 
CMC  
CMOVBE ESI, EAX 
AND RAX, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RAX] 
SUB BL, 21 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RAX], CL 
ADC CL, CL 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RCX], DIL 
JO .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
CMP DL, AL 
AND RDI, 0b1111111111111 # instrumentation
CMOVLE RAX, qword ptr [R14 + RDI] 
CMOVNZ CX, AX 
CMOVNL EBX, EBX 
LEA RDX, qword ptr [RBX + RDI] 
AND RAX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RAX], SIL 
AND RDI, 0b1111111111111 # instrumentation
XOR RCX, qword ptr [R14 + RDI] 
OR AL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV AL 
ADD DIL, -75 # instrumentation
CMOVNO DX, DI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
