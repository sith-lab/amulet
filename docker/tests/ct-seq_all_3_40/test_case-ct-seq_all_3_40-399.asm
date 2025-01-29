.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
XADD SI, AX 
AND AL, -38 
AND RCX, 0b1111111111111 # instrumentation
XADD qword ptr [R14 + RCX], RCX 
AND RDX, 0b1111111111111 # instrumentation
MOVSX RDI, word ptr [R14 + RDX] 
STC  
AND RCX, 0b1111111111111 # instrumentation
MOVZX RBX, word ptr [R14 + RCX] 
ADC DX, -101 
SETLE SIL 
AND RCX, 0b1111111111111 # instrumentation
LOCK AND word ptr [R14 + RCX], -124 
OR SIL, 124 
CMPXCHG RBX, RAX 
AND RDX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RDX], CL 
SETBE CL 
AND RCX, 0b1111111111111 # instrumentation
INC word ptr [R14 + RCX] 
JRCXZ .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
CMOVP RDX, qword ptr [R14 + RAX] 
NOT DI 
AND RAX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RAX], DX 
SETNBE AL 
CMOVB RBX, RDX 
XCHG RDX, RAX 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RCX], -122 
INC RCX 
XOR DIL, 92 
OR CX, 0b1000000000000000 # instrumentation
BSR BX, CX 
AND RAX, 0b1111111111111 # instrumentation
XOR RSI, qword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RSI], DX 
AND EDI, EDI 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RAX], EDX 
OR SI, 0b1000000000000000 # instrumentation
BSF BX, SI 
JNZ .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
CMOVBE DX, word ptr [R14 + RBX] 
SETNB CL 
AND RAX, 0b1111111111111 # instrumentation
LOCK OR dword ptr [R14 + RAX], ESI 
OR DX, 1 # instrumentation
IMUL BL 
NEG SIL 
DEC RAX 
NOP  
AND RSI, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RSI], -52 
XOR CL, DL 
AND AL, 112 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
