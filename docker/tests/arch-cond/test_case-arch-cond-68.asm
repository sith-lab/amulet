.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
ADD SI, word ptr [R14 + RCX] 
ADC EDX, ECX 
SUB DL, DL 
AND RDX, 0b1111111111111 # instrumentation
TEST qword ptr [R14 + RDX], 213446876 
CMPXCHG DL, DL 
CMP DL, AL 
CLD  
XADD AL, BL 
XOR AL, 109 
AND RDI, 0b1111111111111 # instrumentation
TEST qword ptr [R14 + RDI], 1417057503 
AND RCX, 0b1111111111111 # instrumentation
CMOVBE RAX, qword ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
SUB AL, byte ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
SETNO byte ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
SETP byte ptr [R14 + RDI] 
XOR DL, 121 
ADD ESI, -33 
AND DIL, 88 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
TEST RAX, 667879271 
AND RDI, 0b1111111111111 # instrumentation
OR CL, byte ptr [R14 + RDI] 
XOR EAX, -1603151566 
SAHF  
AND RSI, 0b1111111111111 # instrumentation
CMOVNB EAX, dword ptr [R14 + RSI] 
CMOVNP RBX, RAX 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RDI], 84 
CMPXCHG ESI, EDI 
OR AX, 5747 
AND RCX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RCX] 
ADD BX, SI 
AND RAX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RAX], 1 # instrumentation
AND DX, word ptr [R14 + RAX] # instrumentation
SHR DX, 1 # instrumentation
DIV word ptr [R14 + RAX] 
ADD DIL, 118 # instrumentation
LAHF  
ADD RDI, 21 
TEST EAX, EAX 
AND RAX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RAX], 1852554564 
SBB RDI, 76 
TEST BL, CL 
IMUL RCX, RSI 
SUB AL, -38 
MUL RSI 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RSI], 50 
AND RDX, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RDX], ESI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
