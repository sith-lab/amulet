.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
LOCK DEC dword ptr [R14 + RDX] 
CMP ECX, EAX 
AND RAX, 0b1111111111111 # instrumentation
CMOVZ EAX, dword ptr [R14 + RAX] 
IMUL RSI, RDI 
AND RDX, 0b1111111111111 # instrumentation
IMUL byte ptr [R14 + RDX] 
ADD DIL, -7 # instrumentation
LOOPNE .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
ADD DIL, -80 # instrumentation
CMOVNB AX, BX 
AND RBX, 0b1111111111111 # instrumentation
CMOVNO DX, word ptr [R14 + RBX] 
CMOVNLE RAX, RSI 
CMP EDX, -40 
AND RBX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RBX], -2446 
ADD CL, -125 
JO .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RSI], 1 # instrumentation
AND EDX, dword ptr [R14 + RSI] # instrumentation
SHR EDX, 1 # instrumentation
DIV dword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
ADC RDI, qword ptr [R14 + RAX] 
XCHG ECX, EDX 
BSWAP EDX 
AND RAX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RAX], RCX 
CMOVNO RSI, RBX 
ADC EBX, 81 
JMP .bb_main.3 
.bb_main.3:
SAHF  
SUB RAX, -2145897941 
AND RBX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RBX], CL 
AND RDI, 0b1111111111111 # instrumentation
LOCK NEG word ptr [R14 + RDI] 
JMP .bb_main.4 
.bb_main.4:
AND RDI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDI], 935601008 
CMOVBE RAX, RBX 
AND RDI, 0b1111111111111 # instrumentation
ADD EAX, dword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDI], RCX 
MOVZX SI, DL 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RDI], DI 
AND RAX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RAX], DL 
SUB AL, 76 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
