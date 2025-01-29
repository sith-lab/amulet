.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RSI], 0b1000000000000000 # instrumentation
BSF CX, word ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
LOCK INC byte ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RDX], EBX 
AND RAX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RAX], EDX 
CMP RAX, 1548564328 
AND RSI, 0b1111111111111 # instrumentation
CMOVNB DX, word ptr [R14 + RSI] 
CMOVNO EBX, ECX 
MOVSX RBX, SI 
NOT DL 
OR ESI, 1 # instrumentation
AND EDX, ESI # instrumentation
SHR EDX, 1 # instrumentation
DIV ESI 
ADD EAX, -381846771 
TEST EAX, -215601913 
SETNP DL 
AND RAX, 0b1111111111111 # instrumentation
LOCK NEG word ptr [R14 + RAX] 
JNS .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
CMOVS RBX, qword ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RAX], 1363471300 
INC RDI 
AND RSI, 0b1111111111111 # instrumentation
LOCK AND qword ptr [R14 + RSI], RBX 
XOR AX, -13643 
AND RSI, 0b1111111111111 # instrumentation
MOV RBX, qword ptr [R14 + RSI] 
ADC EBX, 8 
CMOVNB EBX, EAX 
AND RDI, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RDI], ESI 
SETLE SIL 
AND RCX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RCX], 72 
MOVSX EAX, SIL 
SUB RCX, 19 
MOV RSI, RDX 
AND RSI, 0b1111111111111 # instrumentation
IMUL DX, word ptr [R14 + RSI], 118 
ADD DIL, -117 # instrumentation
SETS DIL 
AND AX, -10218 
JRCXZ .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
ADD DIL, -101 # instrumentation
MOV CL, -79 
CMOVNP ESI, ECX 
AND RDI, 0b1111111111111 # instrumentation
LOCK XADD dword ptr [R14 + RDI], ECX 
OR CL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV CL 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RDX], -104 
AND RBX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RBX], DL 
SETNS DL 
XADD DL, CL 
TEST RDX, RSI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
