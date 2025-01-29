.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, -74 # instrumentation
ADC AL, SIL 
MOV AL, 52 
STD  
AND RDI, 0b1111111111111 # instrumentation
ADC CL, byte ptr [R14 + RDI] 
NEG CL 
AND RSI, 0b1111111111111 # instrumentation
CMP EDX, dword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RCX], CL 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD DIL, -12 # instrumentation
ADC AX, DX 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RBX], RDI 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RCX], EBX 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RSI], -112 
JRCXZ .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
CMOVL EAX, dword ptr [R14 + RAX] 
CMOVNP BX, CX 
SUB BX, 35 
XCHG AL, SIL 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RAX], -37 
JNZ .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RDI, 0b1111111111111 # instrumentation
IMUL word ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNP RDX, qword ptr [R14 + RAX] 
SBB AX, -66 
SBB EAX, ESI 
ADC DX, DX 
MUL EDI 
ADD SIL, 32 # instrumentation
CMOVP RBX, RAX 
JMP .bb_main.4 
.bb_main.4:
AND RSI, 0b1111111111111 # instrumentation
IMUL RDI, qword ptr [R14 + RSI] 
ADC CL, AL 
OR SI, 1 # instrumentation
AND DX, SI # instrumentation
SHR DX, 1 # instrumentation
DIV SI 
ADD SIL, -59 # instrumentation
ADC EAX, 698173102 
AND RDX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RDX], DI 
AND RSI, 0b1111111111111 # instrumentation
ADD ESI, dword ptr [R14 + RSI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
