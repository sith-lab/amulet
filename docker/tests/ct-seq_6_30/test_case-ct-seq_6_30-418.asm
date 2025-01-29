.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
CMOVNO RSI, qword ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
MUL qword ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
IMUL ECX, dword ptr [R14 + RCX] 
CMP DL, -64 
JMP .bb_main.1 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RBX], 0b1000000000000000000000000000000 # instrumentation
BSF EDX, dword ptr [R14 + RBX] 
ADD DIL, -59 # instrumentation
CMOVL RAX, RCX 
AND RBX, 0b1111111111111 # instrumentation
CMOVLE RSI, qword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RAX], 7 
JMP .bb_main.2 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
CMOVNLE RBX, qword ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
CMOVLE ECX, dword ptr [R14 + RAX] 
CMOVO AX, CX 
AND RCX, 0b1111111111111 # instrumentation
LOCK DEC word ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RDX], -44 
JMP .bb_main.3 
.bb_main.3:
ADD DIL, 5 # instrumentation
CMC  
SUB CL, -65 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RSI], DL 
OR ESI, 1 # instrumentation
AND EDX, ESI # instrumentation
SHR EDX, 1 # instrumentation
DIV ESI 
DEC ESI 
NEG CL 
CMP SIL, 79 
JNS .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
MUL RBX 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RDX], -122 
AND RDX, 0b1111111111111 # instrumentation
CMP CL, byte ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
IMUL RDI, qword ptr [R14 + RCX] 
NEG ESI 
AND RSI, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RSI], 58 
AND RAX, 0b1111111111111 # instrumentation
MUL qword ptr [R14 + RAX] 
JMP .bb_main.5 
.bb_main.5:
AND RDX, 0b1111111111111 # instrumentation
MOVSX EDX, byte ptr [R14 + RDX] 
CMOVLE RAX, RDI 
ADC EAX, ECX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
