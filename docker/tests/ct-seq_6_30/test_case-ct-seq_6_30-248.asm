.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
SUB EDI, ESI 
CMOVNP RSI, RCX 
CMP AX, -13794 
AND RDX, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RDX] 
ADD SIL, -98 # instrumentation
CMOVNBE CX, SI 
AND RCX, 0b1111111111111 # instrumentation
IMUL ECX, dword ptr [R14 + RCX] 
ADD DIL, -88 # instrumentation
LOOPNE .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
ADD DIL, 65 # instrumentation
CMOVNBE RCX, RSI 
ADC AL, 82 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RDX], 44 
JNBE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
ADD SIL, -124 # instrumentation
CMOVNZ RDX, RCX 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RDX], EDI 
SUB SIL, 74 
INC ESI 
JB .bb_main.3 
JMP .bb_main.5 
.bb_main.3:
AND RAX, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RAX] 
ADD DIL, 2 # instrumentation
CMOVP EDX, ECX 
AND RAX, 0b1111111111111 # instrumentation
CMOVL RBX, qword ptr [R14 + RAX] 
ADD DL, 53 
CMOVL CX, AX 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RCX], -93 
AND RBX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RBX], AL 
AND RSI, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RSI], 48 
JMP .bb_main.4 
.bb_main.4:
OR ESI, 1 # instrumentation
AND EDX, ESI # instrumentation
SHR EDX, 1 # instrumentation
DIV ESI 
IMUL AX 
ADC RDX, RDX 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RDX], 71 
JMP .bb_main.5 
.bb_main.5:
ADD SIL, -63 # instrumentation
CMOVBE EDI, EAX 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RDI], -76 
AND RBX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RBX], CL 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RSI], -51 
AND RAX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RAX], 78 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
