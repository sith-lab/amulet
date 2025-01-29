.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, 23 # instrumentation
LEA EBX, qword ptr [RBX + RDX + 61822] 
SETO AL 
SETLE CL 
AND RCX, 11 
AND RCX, 0b1111111111111 # instrumentation
STD  
AND RBX, 0b1111111111111 # instrumentation
MOVZX RDX, word ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNB RDI, qword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNP DI, word ptr [R14 + RDX] 
SUB BL, CL 
TEST RAX, 778198277 
AND RAX, 0b1111111111111 # instrumentation
IMUL RDI, qword ptr [R14 + RAX] 
DEC RSI 
OR DIL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV DIL 
AND RCX, 0b1111111111111 # instrumentation
LOCK AND dword ptr [R14 + RCX], -112 
NOT AL 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
OR ESI, 75 
CMP EAX, 30124550 
AND RDX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RDX], CL 
AND RCX, 0b1111111111111 # instrumentation
LOCK NEG byte ptr [R14 + RCX] 
SBB AX, -2706 
AND RDI, 0b1111111111111 # instrumentation
SBB EAX, dword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
ADD CL, byte ptr [R14 + RDI] 
OR DIL, -15 
AND RDX, 0b1111111111111 # instrumentation
MOVSX CX, byte ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RBX], CL 
CMOVLE EDX, EBX 
OR SI, 91 
SETZ SIL 
JO .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
XOR AL, CL 
AND RSI, 0b1111111111111 # instrumentation
XOR word ptr [R14 + RSI], BX 
AND RCX, 0b1111111111111 # instrumentation
SETS byte ptr [R14 + RCX] 
MOVZX ECX, CL 
CMOVS RCX, RDI 
IMUL RAX 
AND RCX, 0b1111111111111 # instrumentation
ADC CX, word ptr [R14 + RCX] 
ADC EAX, -1911074681 
SETLE CL 
SETNBE CL 
SUB AL, 56 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
