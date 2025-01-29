.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
SBB DI, word ptr [R14 + RSI] 
SBB AX, -8001 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RDX], AL 
DEC DL 
AND RSI, 0b1111111111111 # instrumentation
CMOVNZ RDI, qword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNS RSI, qword ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
ADD SIL, byte ptr [R14 + RBX] 
JMP .bb_main.1 
.bb_main.1:
XCHG EDX, EAX 
AND RBX, 0b1111111111111 # instrumentation
MUL qword ptr [R14 + RBX] 
ADD EDI, 56 
ADC BX, SI 
CMP RDX, -83 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RCX], -120 
JBE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RBX], ECX 
SBB SIL, -1 
CMOVNLE RBX, RSI 
MOVZX SI, BL 
JNP .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
AND RBX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RBX], RDI 
AND RAX, 0b1111111111111 # instrumentation
CMOVBE BX, word ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
CMP EDI, dword ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
ADC RAX, qword ptr [R14 + RAX] 
ADC RAX, 2016403334 
AND RDX, 0b1111111111111 # instrumentation
MOVSX RCX, byte ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
IMUL ECX, dword ptr [R14 + RBX] 
ADD SIL, 78 # instrumentation
LOOPE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RCX, 0b1111111111111 # instrumentation
CMOVP EDX, dword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RDI], -32 
SUB SIL, 3 
OR EDI, 1 # instrumentation
AND EDX, EDI # instrumentation
SHR EDX, 1 # instrumentation
DIV EDI 
IMUL EDX, ECX, -98 
AND RDI, 0b1111111111111 # instrumentation
SUB RSI, qword ptr [R14 + RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
