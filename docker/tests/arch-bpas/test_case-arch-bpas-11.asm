.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
SETB byte ptr [R14 + RBX] 
STC  
AND SIL, DL 
SUB SIL, -118 
AND RCX, 0b1111111111111 # instrumentation
DEC dword ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK NOT qword ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
CMOVP RBX, qword ptr [R14 + RBX] 
SETNL BL 
XCHG ESI, EAX 
AND RSI, 0b1111111111111 # instrumentation
XOR AL, 100 
JNS .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
ADD DIL, -60 # instrumentation
ADC ECX, EAX 
AND RSI, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RSI], CL 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RAX], -2 
AND RCX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RCX], CL 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RSI], -5 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RSI], -19 
OR RSI, 0b1000000000000000000000000000000 # instrumentation
BSF RDX, RSI 
MOVZX EDI, BL 
AND RBX, 0b1111111111111 # instrumentation
SETNP byte ptr [R14 + RBX] 
MOVSX SI, DL 
AND RDI, 0b1111111111111 # instrumentation
MOVZX ECX, byte ptr [R14 + RDI] 
CMOVNB RDI, RBX 
LOOP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDI], 0b1000000000000000 # instrumentation
BSR BX, word ptr [R14 + RDI] 
ADD DIL, 44 # instrumentation
CMOVL CX, CX 
NEG SIL 
DEC SIL 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RCX], 26 
LEA RSI, qword ptr [RDI + RBX] 
IMUL SI 
TEST DL, BL 
JNZ .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RDX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RDX], -97 
AND RDX, 0b1111111111111 # instrumentation
LOCK XADD word ptr [R14 + RDX], DI 
CMOVNP EDX, ECX 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RCX], EAX 
MOV ECX, EBX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNP RBX, qword ptr [R14 + RDX] 
CMOVNLE RBX, RAX 
SETBE AL 
ADD AL, 112 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
