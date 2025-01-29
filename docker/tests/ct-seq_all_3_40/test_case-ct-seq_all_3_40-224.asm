.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RCX], 57 
AND RSI, 0b1111111111111 # instrumentation
CMP CL, byte ptr [R14 + RSI] 
SETO AL 
SETNB AL 
DEC DI 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RBX], RSI 
XOR ECX, -80 
AND RDI, 0b1111111111111 # instrumentation
LOCK OR dword ptr [R14 + RDI], EDI 
AND RBX, 0b1111111111111 # instrumentation
CMOVLE ECX, dword ptr [R14 + RBX] 
MOVSX DX, AL 
MOV CX, CX 
XOR DIL, 114 
SUB EAX, 22988104 
CMOVLE EDI, ECX 
CMOVNP RDX, RSI 
OR ESI, 1 # instrumentation
AND EDX, ESI # instrumentation
SHR EDX, 1 # instrumentation
DIV ESI 
MUL DX 
ADC CX, AX 
JO .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
XOR SIL, 32 
TEST SI, AX 
AND RBX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RBX], EDX 
CMC  
AND RBX, 0b1111111111111 # instrumentation
CMOVNP AX, word ptr [R14 + RBX] 
ADC EAX, -1665070725 
XCHG RCX, RDX 
AND RBX, 0b1111111111111 # instrumentation
CMPXCHG word ptr [R14 + RBX], BX 
AND RSI, 0b1111111111111 # instrumentation
CMOVNL EAX, dword ptr [R14 + RSI] 
CDQ  
ADD EAX, 685465561 
AND RDX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDX], BL 
SETL BL 
JMP .bb_main.2 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
CMOVLE BX, word ptr [R14 + RAX] 
CDQ  
AND RSI, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
MOV RBX, qword ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
OR CX, word ptr [R14 + RAX] 
XOR DIL, 124 
NEG CL 
AND RSI, 0b1111111111111 # instrumentation
CMOVP EAX, dword ptr [R14 + RSI] 
AND AL, -55 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
