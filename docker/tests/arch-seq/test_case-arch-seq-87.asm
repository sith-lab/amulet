.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RAX], -110 
OR AX, 0b1000000000000000 # instrumentation
BSF BX, AX 
DEC DL 
OR RAX, -1282631041 
CMP RAX, 395983128 
AND RDI, 0b1111111111111 # instrumentation
SBB RSI, qword ptr [R14 + RDI] 
ADD RCX, 58 
AND RDI, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RDI], 15 
JNLE .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
XADD EDI, EDI 
CMOVBE SI, BX 
XCHG AX, AX 
ADC EAX, -1015336542 
AND CL, 42 
AND RDI, 0b1111111111111 # instrumentation
TEST word ptr [R14 + RDI], DX 
AND RSI, 0b1111111111111 # instrumentation
AND RDX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RDX], -76 
AND RAX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RAX], EDX 
AND RSI, 0b1111111111111 # instrumentation
IMUL qword ptr [R14 + RSI] 
JMP .bb_main.2 
.bb_main.2:
XOR RDX, RSI 
TEST RAX, -795898680 
AND RDX, 0b1111111111111 # instrumentation
CMP ESI, dword ptr [R14 + RDX] 
CWDE  
AND RAX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RAX], SI 
AND RCX, 0b1111111111111 # instrumentation
ADD AX, word ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
XOR qword ptr [R14 + RDI], RDI 
INC RBX 
DEC EDX 
AND RSI, 0b1111111111111 # instrumentation
XADD byte ptr [R14 + RSI], BL 
CMOVNO CX, DI 
DEC SIL 
SAHF  
AND RAX, 0b1111111111111 # instrumentation
CMPXCHG word ptr [R14 + RAX], AX 
JNP .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
OR BL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV BL 
XOR CL, -73 
CMPXCHG AL, CL 
AND RAX, 0b1111111111111 # instrumentation
CMOVNS EDX, dword ptr [R14 + RAX] 
XADD SI, DX 
LEA ECX, qword ptr [RBX + RAX] 
ADD DL, -73 
MUL CX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
