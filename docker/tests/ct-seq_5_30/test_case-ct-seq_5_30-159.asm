.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
XCHG CX, AX 
OR RBX, 0b1000000000000000000000000000000 # instrumentation
BSF RDI, RBX 
ADD AL, CL 
MOVZX EDX, DL 
AND RDX, 0b1111111111111 # instrumentation
CMOVNO RAX, qword ptr [R14 + RDX] 
SBB EAX, 810021156 
JNBE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
CDQ  
OR EAX, 0b1000000000000000000000000000000 # instrumentation
BSR ESI, EAX 
IMUL CX, BX, 47 
ADD RDX, RDI 
JNS .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
ADD SIL, -89 # instrumentation
CMOVLE ESI, ECX 
CMP BL, -30 
AND RSI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RSI], 0b1000000000000000000000000000000 # instrumentation
BSF RCX, qword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RDX], ECX 
SUB CX, -122 
SUB DL, -108 
JNO .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
AND RDI, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RDI], DX 
AND RSI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RSI], 1 # instrumentation
AND DX, word ptr [R14 + RSI] # instrumentation
SHR DX, 1 # instrumentation
DIV word ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RDX], DIL 
CMOVBE RSI, RSI 
DEC AL 
NEG AX 
CMP RBX, -24 
AND RSI, 0b1111111111111 # instrumentation
ADD DL, byte ptr [R14 + RSI] 
JMP .bb_main.4 
.bb_main.4:
ADD SIL, -89 # instrumentation
MOVSX RAX, AX 
DEC AL 
ADC RAX, 46513049 
SUB RDX, RDI 
SBB AX, 21438 
AND RBX, 0b1111111111111 # instrumentation
MOVZX RBX, byte ptr [R14 + RBX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
