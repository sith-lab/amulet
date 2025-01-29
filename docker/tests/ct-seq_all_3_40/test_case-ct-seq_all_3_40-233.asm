.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
ADD DIL, 26 # instrumentation
CMOVL RDI, RSI 
CMP RAX, -618269599 
AND RCX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RCX], CX 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
MOVSB  
AND RBX, 0b1111111111111 # instrumentation
MUL qword ptr [R14 + RBX] 
MOV DIL, -106 
SUB AX, -10950 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
STOSD  
SETO AL 
XOR RBX, RDX 
MOVSX AX, CL 
AND RDI, 0b1111111111111 # instrumentation
CMOVB EDI, dword ptr [R14 + RDI] 
IMUL RBX, RCX, 78 
ADD RSI, 22 
TEST CL, DL 
JNBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD SIL, -124 # instrumentation
ADC EAX, 1758142289 
SETNBE AL 
AND RDX, 0b1111111111111 # instrumentation
LOCK CMPXCHG byte ptr [R14 + RDX], AL 
AND RBX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RBX], 10 
MOVSX BX, BL 
AND RCX, 0b1111111111111 # instrumentation
LOCK XOR dword ptr [R14 + RCX], ECX 
SETNBE BL 
SETP CL 
AND BX, BX 
JZ .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RDI], AL 
AND RSI, 0b1111111111111 # instrumentation
XOR dword ptr [R14 + RSI], 30 
AND RDI, 0b1111111111111 # instrumentation
TEST word ptr [R14 + RDI], CX 
SBB RBX, RCX 
XOR EAX, 336965251 
AND RBX, 0b1111111111111 # instrumentation
LOCK NEG dword ptr [R14 + RBX] 
MOVSX ECX, BL 
CMP SIL, SIL 
CMOVNP EBX, EAX 
CMOVZ BX, AX 
CMOVNP ECX, EDI 
SBB SIL, DIL 
AND RBX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RBX], EAX 
SUB SI, SI 
AND AL, BL 
AND RCX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RCX], AX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
