.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
SUB AX, 68 
AND RDX, 0b1111111111111 # instrumentation
CMOVS SI, word ptr [R14 + RDX] 
CMOVS EDX, EBX 
AND RSI, 0b1111111111111 # instrumentation
INC dword ptr [R14 + RSI] 
MOV EDX, EAX 
CMP AX, 43 
CMP DIL, DIL 
IMUL CL 
MOVZX SI, BL 
TEST RDI, 575271454 
AND RAX, 0b1111111111111 # instrumentation
CMP EAX, dword ptr [R14 + RAX] 
JL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
SUB BL, AL 
SETS CL 
SBB RAX, -830827837 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RDX], BL 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RDX], 19 
AND RSI, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RSI], -71 
AND RBX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RBX], AL 
AND RDX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDX], SI 
XCHG ECX, EAX 
XADD BL, CL 
INC ESI 
AND RBX, 0b1111111111111 # instrumentation
DEC word ptr [R14 + RBX] 
OR CL, BL 
JNO .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
ADD SIL, 16 # instrumentation
SETZ DL 
AND RBX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RBX], DL 
AND RDX, RCX 
IMUL EBX, EDI 
SETNB DL 
AND RCX, 0b1111111111111 # instrumentation
SETS byte ptr [R14 + RCX] 
AND CL, -32 
AND RDX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDX], -123 
CMP SIL, SIL 
XOR AL, -22 
CMOVP DI, CX 
CMOVB EDX, ECX 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RDI], -113 
XOR DIL, -54 
AND RDI, 0b1111111111111 # instrumentation
ADD DIL, byte ptr [R14 + RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
