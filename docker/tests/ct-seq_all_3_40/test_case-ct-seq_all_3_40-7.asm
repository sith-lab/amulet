.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RDX], -5 
AND RDX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RDX], -56 
ADC DIL, BL 
MOVSX DX, DL 
ADD DIL, 54 
NEG EAX 
AND RSI, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RSI], AL 
SETLE DL 
ADC DIL, -86 
XCHG CL, DIL 
CMOVO ECX, EAX 
CMP EAX, -36 
OR ESI, EDX 
XCHG CX, AX 
JNP .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
ADD SIL, 81 # instrumentation
CMOVBE RDI, RBX 
CMP CL, -78 
AND RBX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RBX], RDI 
AND ESI, 124 
AND RAX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RAX], CL 
SETNO SIL 
LEA EDI, qword ptr [RDI + RDI + 28952] 
NOT AL 
AND RAX, 0b1111111111111 # instrumentation
XOR AX, word ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNBE RDX, qword ptr [R14 + RBX] 
CMP ESI, -110 
OR BL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV BL 
ADD SIL, 100 # instrumentation
MOVSX DI, CL 
CMC  
JMP .bb_main.2 
.bb_main.2:
AND CX, -94 
CMP ESI, EBX 
AND RCX, 0b1111111111111 # instrumentation
AND CL, byte ptr [R14 + RCX] 
IMUL RDX 
NEG EAX 
IMUL AL 
NEG EBX 
CMOVNLE EBX, ESI 
AND RBX, 0b1111111111111 # instrumentation
MOV DI, word ptr [R14 + RBX] 
SBB AL, AL 
TEST EAX, 2093128432 
AND CL, CL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
