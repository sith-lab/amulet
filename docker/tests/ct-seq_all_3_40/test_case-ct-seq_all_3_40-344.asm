.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
LOCK INC word ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RBX], 1 # instrumentation
MOV AX, 1 # instrumentation
DIV byte ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
IMUL AX, word ptr [R14 + RBX] 
OR BX, -124 
XADD RBX, RDX 
SETNLE DL 
SETNO BL 
CBW  
ADC CL, AL 
AND RDX, 0b1111111111111 # instrumentation
CMOVNP RDX, qword ptr [R14 + RDX] 
XOR AL, -71 
AND RAX, 0b1111111111111 # instrumentation
CMOVNB SI, word ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVBE RSI, qword ptr [R14 + RSI] 
SETNO BL 
JMP .bb_main.1 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
MUL word ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
ADD DIL, byte ptr [R14 + RDI] 
AND EAX, 1285031883 
LEA DI, qword ptr [RAX + RSI] 
ADC DI, DI 
AND RAX, 0b1111111111111 # instrumentation
LOCK NEG qword ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RBX], BL 
AND RDX, 0b1111111111111 # instrumentation
LOCK OR qword ptr [R14 + RDX], RBX 
AND RAX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RAX], 0b1000000000000000000000000000000 # instrumentation
BSF RDX, qword ptr [R14 + RAX] 
ADD SIL, -46 # instrumentation
JNP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
ADD DIL, 2 # instrumentation
SETNB BL 
AND RAX, 0b1111111111111 # instrumentation
CMOVL SI, word ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVS EDX, dword ptr [R14 + RBX] 
CMPXCHG AL, CL 
MOV CL, -25 
AND RAX, 0b1111111111111 # instrumentation
LOCK INC qword ptr [R14 + RAX] 
MOVZX AX, DL 
SBB BX, AX 
AND EAX, -342738309 
CMC  
AND BX, DI 
CMOVNS BX, DI 
AND RDI, 0b1111111111111 # instrumentation
CMOVP RDI, qword ptr [R14 + RDI] 
SBB DIL, -110 
SUB RCX, RBX 
XCHG DI, BX 
SBB BL, BL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
