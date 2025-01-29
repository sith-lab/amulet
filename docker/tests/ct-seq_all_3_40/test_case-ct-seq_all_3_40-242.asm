.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, -91 # instrumentation
ADC DIL, 40 
SUB RDX, RSI 
AND RDX, 0b1111111111111 # instrumentation
XOR word ptr [R14 + RDX], DI 
SETB DL 
NEG DX 
CMOVNB BX, AX 
AND EAX, -718714817 
SUB AL, 59 
IMUL CX 
AND RDX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RDX], -103 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
NOT DI 
AND RCX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RCX], -13 
CMC  
ADC DX, SI 
XADD SI, DI 
NOT BL 
AND RAX, 0b1111111111111 # instrumentation
CMP DL, byte ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RCX], EDI 
AND RAX, 0b1111111111111 # instrumentation
CMOVNS RDI, qword ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
TEST qword ptr [R14 + RDI], RBX 
AND RDI, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RDI], -58 
INC AL 
AND RCX, 0b1111111111111 # instrumentation
ADD CL, byte ptr [R14 + RCX] 
CMOVNZ RSI, RCX 
IMUL AX 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RSI], -19 
JNP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
SETNS byte ptr [R14 + RDX] 
NOT AL 
TEST EAX, -2077622289 
CMOVNS ESI, EAX 
MOVSX RDI, DX 
AND DL, AL 
ADC CL, CL 
AND RBX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RBX], -90 
ADD EAX, -1049259577 
AND RSI, 0b1111111111111 # instrumentation
SUB RCX, qword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RCX], 117 
SETO CL 
AND RCX, 0b1111111111111 # instrumentation
INC word ptr [R14 + RCX] 
XOR AL, 90 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
