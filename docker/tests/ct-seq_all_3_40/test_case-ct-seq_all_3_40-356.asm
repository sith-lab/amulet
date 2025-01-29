.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
MOV SIL, -50 
AND RSI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RSI], RBX 
XOR AX, 16262 
AND RDX, 0b1111111111111 # instrumentation
MUL word ptr [R14 + RDX] 
OR DI, 1 # instrumentation
AND DX, DI # instrumentation
SHR DX, 1 # instrumentation
DIV DI 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
LODSW  
AND RDI, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RDI], AX 
AND RCX, 0b1111111111111 # instrumentation
LOCK XOR qword ptr [R14 + RCX], RDI 
CMP AX, 16854 
CMC  
AND RCX, 0b1111111111111 # instrumentation
CMOVNLE RDX, qword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK CMPXCHG dword ptr [R14 + RDX], ECX 
SETNP AL 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
MOVSB  
AND RCX, 0b1111111111111 # instrumentation
AND DX, word ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RCX], DIL 
ADC CL, BL 
AND RDI, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RDI], EDI 
JNS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD SIL, -127 # instrumentation
CMOVB RAX, RSI 
XCHG CX, AX 
SBB EAX, -357322936 
SUB EDX, EDI 
ADD AL, -124 
TEST AL, -67 
CMPXCHG RSI, RSI 
AND RDX, 0b1111111111111 # instrumentation
LOCK AND byte ptr [R14 + RDX], DL 
JZ .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
CMPXCHG CL, CL 
AND RBX, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RBX], EDI 
AND RDI, 0b1111111111111 # instrumentation
SUB BL, byte ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
SUB AX, word ptr [R14 + RAX] 
XCHG ESI, ECX 
CMOVLE SI, AX 
AND RCX, 0b1111111111111 # instrumentation
NOT word ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVS RAX, qword ptr [R14 + RBX] 
ADD BL, DL 
SETS BL 
DEC DX 
SUB DL, 105 
CMOVNS SI, AX 
XCHG ECX, EAX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
