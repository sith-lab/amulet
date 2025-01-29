.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, -93 # instrumentation
SETNLE DL 
MOVSX RSI, CL 
CMOVLE AX, DX 
CMP SIL, 85 
AND RAX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RAX], RCX 
OR RCX, 0b1000000000000000000000000000000 # instrumentation
BSR RDI, RCX 
ADD DIL, 53 # instrumentation
LEA DI, qword ptr [RDI + RCX] 
CMOVNB RCX, RDX 
CLD  
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RAX], 4 
AND RDI, 0b1111111111111 # instrumentation
NEG dword ptr [R14 + RDI] 
JNP .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
CLD  # instrumentation
AND RSI, 0b1111111111111 # instrumentation
MUL dword ptr [R14 + RSI] 
XOR DIL, 74 
AND RBX, 0b1111111111111 # instrumentation
CMOVNBE EDX, dword ptr [R14 + RBX] 
SBB BL, -29 
AND RDI, 0b1111111111111 # instrumentation
SBB BX, word ptr [R14 + RDI] 
SBB AL, -128 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
LODSD  
AND RBX, 0b1111111111111 # instrumentation
CMOVNL EAX, dword ptr [R14 + RBX] 
MUL CL 
LEA RAX, qword ptr [RCX + RAX] 
ADC EDI, EAX 
AND RDX, 0b1111111111111 # instrumentation
LOCK CMPXCHG word ptr [R14 + RDX], CX 
SETNLE DL 
JO .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
ADD DIL, 93 # instrumentation
SETNL BL 
XCHG EDI, EDX 
NEG DX 
AND RBX, 0b1111111111111 # instrumentation
CMOVBE EAX, dword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
XOR qword ptr [R14 + RDX], RAX 
MOVSX RCX, DIL 
XOR RAX, -1032080821 
AND AL, -77 
AND RBX, 0b1111111111111 # instrumentation
LOCK CMPXCHG dword ptr [R14 + RBX], EDX 
AND RDX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDX], EDX 
ADC EDI, 90 
ADC AL, 79 
AND RSI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RSI], 1 # instrumentation
AND DX, word ptr [R14 + RSI] # instrumentation
SHR DX, 1 # instrumentation
DIV word ptr [R14 + RSI] 
SUB CL, CL 
AND RCX, 0b1111111111111 # instrumentation
LOCK NEG qword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
SETNBE byte ptr [R14 + RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
