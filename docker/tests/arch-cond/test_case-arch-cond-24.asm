.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, -110 # instrumentation
CMOVNP RDI, RDX 
SUB AL, -86 
SETP AL 
AND RSI, 0b1111111111111 # instrumentation
CMP DIL, byte ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDI], RSI 
AND RBX, 0b1111111111111 # instrumentation
IMUL SI, word ptr [R14 + RBX] 
ADD CL, SIL 
NOT BX 
JS .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
ADD DIL, 16 # instrumentation
LEA RDX, qword ptr [RSI + RCX] 
SBB AL, -93 
DEC BL 
MOVSX RSI, BX 
SETZ DL 
MOVZX RCX, CL 
JL .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
ADD DIL, -110 # instrumentation
ADC EAX, -656739043 
AND RDI, 0b1111111111111 # instrumentation
LOCK DEC byte ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
SETNB byte ptr [R14 + RBX] 
SETNB AL 
AND RDI, 0b1111111111111 # instrumentation
AND dword ptr [R14 + RDI], -37 
CMOVNBE DX, DI 
AND DL, DL 
AND RDI, 0b1111111111111 # instrumentation
XOR AL, byte ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RCX], 1 # instrumentation
AND EDX, dword ptr [R14 + RCX] # instrumentation
SHR EDX, 1 # instrumentation
DIV dword ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RCX], CL 
ADC RDX, RDI 
ADD ECX, 65 
JL .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
MUL RAX 
AND RDI, 0b1111111111111 # instrumentation
MUL word ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
SETNO byte ptr [R14 + RBX] 
MUL DX 
AND AX, -31392 
AND DIL, 41 
BSWAP EDX 
CMOVS DX, CX 
CMOVNO DX, BX 
CMOVZ EDI, ESI 
CMP RCX, RDX 
SBB DL, AL 
AND RBX, 0b1111111111111 # instrumentation
ADC AX, word ptr [R14 + RBX] 
CMOVLE RBX, RDI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
