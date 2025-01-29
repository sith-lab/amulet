.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD EAX, ESI 
SBB AX, -6851 
CMOVLE DI, SI 
CMOVNP EBX, ESI 
AND RDI, 0b1111111111111 # instrumentation
IMUL dword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RDI], CL 
CMP RBX, -118 
CMOVNB AX, SI 
SBB ESI, 114 
XCHG AL, AL 
AND RAX, 0b1111111111111 # instrumentation
ADC RDX, -2 
AND RSI, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RSI] 
MOVZX EAX, AX 
AND RBX, 0b1111111111111 # instrumentation
DEC qword ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RSI], 109 
SUB RAX, -106166157 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RDX], AX 
CMP AX, DI 
MOV DL, AL 
AND RCX, 0b1111111111111 # instrumentation
CMOVL RSI, qword ptr [R14 + RCX] 
CMP RAX, -86 
AND RDX, 0b1111111111111 # instrumentation
CMOVZ RAX, qword ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVLE SI, word ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RSI], 39 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RBX], DIL 
AND RDX, 0b1111111111111 # instrumentation
CMP CL, byte ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDX], -56 
STC  
CMOVNLE RBX, RCX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
