.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
SUB AL, 93 
AND RDX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDX], 413818402 
MOV AX, SI 
OR SI, 1 # instrumentation
AND DX, SI # instrumentation
SHR DX, 1 # instrumentation
DIV SI 
AND RDX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDX], 0b1000000000000000 # instrumentation
BSR BX, word ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RCX], BL 
CMOVS SI, CX 
ADC DIL, 34 
AND RCX, 0b1111111111111 # instrumentation
CMOVNBE RCX, qword ptr [R14 + RCX] 
MOVZX RDI, BX 
AND RCX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RCX], 0b1000000000000000 # instrumentation
BSF BX, word ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
SBB RDI, qword ptr [R14 + RDX] 
CMC  
AND RAX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RAX], 0b1000000000000000 # instrumentation
BSR CX, word ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVLE EDI, dword ptr [R14 + RCX] 
XCHG RDI, RBX 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RDX], 105 
AND RSI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RSI], EAX 
MUL SIL 
AND RDI, 0b1111111111111 # instrumentation
IMUL qword ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
ADD CL, byte ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
CMP RDI, qword ptr [R14 + RCX] 
IMUL ECX, ESI, -11 
AND RSI, 0b1111111111111 # instrumentation
ADD AX, word ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RBX], -2 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
