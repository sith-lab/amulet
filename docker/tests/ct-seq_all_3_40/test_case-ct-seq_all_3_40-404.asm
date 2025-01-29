.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
LOCK AND byte ptr [R14 + RBX], -110 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RDX], ECX 
MOVZX AX, DL 
AND RSI, 0b1111111111111 # instrumentation
SBB EBX, dword ptr [R14 + RSI] 
MOV BL, -5 
NEG RBX 
AND RSI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RSI], RCX 
AND RSI, 0b1111111111111 # instrumentation
CMOVNS SI, word ptr [R14 + RSI] 
AND EAX, 93 
AND RDI, 0b1111111111111 # instrumentation
LOCK AND dword ptr [R14 + RDI], ECX 
AND RBX, 0b1111111111111 # instrumentation
SUB CL, byte ptr [R14 + RBX] 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD DIL, -98 # instrumentation
MOV DL, DL 
SBB EAX, -1247868941 
AND RDI, 0b1111111111111 # instrumentation
LOCK XOR word ptr [R14 + RDI], DX 
AND RCX, 0b1111111111111 # instrumentation
CMOVNS CX, word ptr [R14 + RCX] 
IMUL SI 
AND RSI, 0b1111111111111 # instrumentation
IMUL word ptr [R14 + RSI] 
CMOVNO BX, DX 
OR CL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV CL 
XOR DIL, 63 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RDI], SI 
JNB .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
CLD  # instrumentation
AND RDX, 0b1111111111111 # instrumentation
CMOVB DI, word ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
AND ECX, dword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
INC dword ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
LODSD  
CMOVNO DI, BX 
AND RCX, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RCX], RBX 
XOR AL, -116 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RSI], EAX 
AND RBX, 0b1111111111111 # instrumentation
XADD qword ptr [R14 + RBX], RBX 
AND RDI, 0b1111111111111 # instrumentation
INC word ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
AND EAX, dword ptr [R14 + RBX] 
OR CX, 0b1000000000000000 # instrumentation
BSF DI, CX 
AND DIL, 6 
AND RCX, 0b1111111111111 # instrumentation
CMOVNBE RAX, qword ptr [R14 + RCX] 
ADD RCX, RDX 
CMOVNS DI, DI 
AND RBX, 0b1111111111111 # instrumentation
SBB BL, byte ptr [R14 + RBX] 
SETL SIL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
