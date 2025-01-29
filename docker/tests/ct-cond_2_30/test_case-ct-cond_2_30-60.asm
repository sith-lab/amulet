.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
ADC CX, word ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVLE DX, word ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RBX], 1 # instrumentation
AND DX, word ptr [R14 + RBX] # instrumentation
SHR DX, 1 # instrumentation
DIV word ptr [R14 + RBX] 
IMUL AX 
XCHG AL, DL 
AND RAX, 0b1111111111111 # instrumentation
IMUL word ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RAX], 116 
AND RCX, 0b1111111111111 # instrumentation
CMOVNLE RCX, qword ptr [R14 + RCX] 
CMOVNL EAX, ESI 
AND RSI, 0b1111111111111 # instrumentation
MUL word ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
IMUL RCX, qword ptr [R14 + RDI], 11 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RBX], CL 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
SBB ECX, dword ptr [R14 + RBX] 
XCHG ESI, ECX 
AND RDX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDX], 0b1000000000000000 # instrumentation
BSR AX, word ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RBX], ESI 
AND RSI, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RSI], ESI 
SBB AL, -51 
SBB SI, BX 
CMP RCX, RBX 
AND RCX, 0b1111111111111 # instrumentation
SUB DL, byte ptr [R14 + RCX] 
CMP RAX, RDI 
CMOVNO SI, BX 
ADD AX, -5061 
AND RDI, 0b1111111111111 # instrumentation
LOCK DEC dword ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
CMOVL RCX, qword ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RBX], -18 
CMP RBX, RAX 
SUB EAX, -1486758409 
AND RDI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDI], EAX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
