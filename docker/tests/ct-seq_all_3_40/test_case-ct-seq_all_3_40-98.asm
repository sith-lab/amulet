.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, -96 # instrumentation
SETNL CL 
ADC RAX, RDX 
NOT CL 
AND RDX, 0b1111111111111 # instrumentation
LOCK INC dword ptr [R14 + RDX] 
SETO CL 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RSI], -110 
AND RAX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RAX], 1 # instrumentation
SETP BL 
SETZ BL 
AND RDX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RDX], CL 
AND RDX, 0b1111111111111 # instrumentation
SUB DL, byte ptr [R14 + RDX] 
SBB AX, 30297 
AND DIL, 81 
CMOVNZ EDX, ESI 
AND RCX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RCX], 97 
AND RAX, 0b1111111111111 # instrumentation
LOCK DEC dword ptr [R14 + RAX] 
JMP .bb_main.1 
.bb_main.1:
BSWAP RAX 
AND RBX, 0b1111111111111 # instrumentation
SUB AX, word ptr [R14 + RBX] 
MOV SI, 24343 
ADC RAX, -1962915277 
AND RDX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RDX], BX 
NEG CL 
AND RBX, 0b1111111111111 # instrumentation
SETNS byte ptr [R14 + RBX] 
ADD EBX, EDX 
MOV CX, 569 
AND RSI, 0b1111111111111 # instrumentation
CMP SIL, byte ptr [R14 + RSI] 
ADD DIL, 25 
AND RSI, 0b1111111111111 # instrumentation
XOR qword ptr [R14 + RSI], RDX 
AND RAX, 0b1111111111111 # instrumentation
CMPXCHG word ptr [R14 + RAX], AX 
JBE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
IMUL RBX, RDI 
IMUL RAX 
SUB EAX, 183651345 
TEST DL, AL 
SETNB BL 
XCHG CX, CX 
AND RBX, 0b1111111111111 # instrumentation
CMP BL, byte ptr [R14 + RBX] 
SETNBE DL 
CMOVO ESI, ECX 
AND RDI, 0b1111111111111 # instrumentation
MUL dword ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RAX], 1 # instrumentation
AND EDX, dword ptr [R14 + RAX] # instrumentation
SHR EDX, 1 # instrumentation
DIV dword ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
