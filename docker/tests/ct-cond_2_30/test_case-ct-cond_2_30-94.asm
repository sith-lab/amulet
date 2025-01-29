.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RSI], 0b1000000000000000 # instrumentation
BSR BX, word ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
SUB AL, byte ptr [R14 + RDX] 
ADC EAX, -2083294044 
AND RCX, 0b1111111111111 # instrumentation
CMOVZ DI, word ptr [R14 + RCX] 
OR ESI, 0b1000000000000000000000000000000 # instrumentation
BSR ECX, ESI 
AND RDI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDI], -41 
AND RSI, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RSI], 69 
AND RCX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RCX], DL 
ADD AL, 12 
MUL RDX 
AND RAX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RAX], 1 # instrumentation
AND EDX, dword ptr [R14 + RAX] # instrumentation
SHR EDX, 1 # instrumentation
DIV dword ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RCX], DX 
CMOVBE EBX, EAX 
MOV CL, AL 
XCHG CX, AX 
AND RSI, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RSI], DL 
JLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD DIL, 66 # instrumentation
XCHG DL, CL 
MOVSX AX, AL 
CMC  
AND RBX, 0b1111111111111 # instrumentation
IMUL RCX, qword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVBE AX, word ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
DEC word ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
CMOVZ ESI, dword ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RAX], 73 
MOV AL, DL 
AND RDX, 0b1111111111111 # instrumentation
IMUL RSI, qword ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNBE RDI, qword ptr [R14 + RBX] 
MOVSX RSI, SIL 
CMOVP RAX, RBX 
AND RSI, 0b1111111111111 # instrumentation
ADD CL, byte ptr [R14 + RSI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
