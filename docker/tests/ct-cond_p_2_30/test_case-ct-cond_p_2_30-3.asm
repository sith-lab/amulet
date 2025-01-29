.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RBX], -67 
AND RSI, 0b1111111111111 # instrumentation
CMOVNL ECX, dword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RAX], -115 
MOVSX ECX, CX 
AND RAX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RAX], -23 
AND RSI, 0b1111111111111 # instrumentation
IMUL dword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RCX], -83 
AND RAX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RAX], AL 
ADD AX, 20690 
MUL BL 
SUB RAX, 52 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RCX], 58 
CMOVNO DI, AX 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RDX], -110 
AND RDI, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RDI], CL 
LEA ECX, qword ptr [RCX] 
MOVZX RDI, SI 
AND RDI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDI], -32571 
ADD RCX, -96 
JNL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD SIL, -37 # instrumentation
SBB AL, SIL 
AND RSI, 0b1111111111111 # instrumentation
LOCK DEC byte ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
CMOVL DI, word ptr [R14 + RCX] 
CMOVNP AX, SI 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RBX], -55 
MOVSX SI, AL 
SBB DI, 65 
AND RBX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RBX], EDI 
AND RCX, 0b1111111111111 # instrumentation
ADD DX, word ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
DEC dword ptr [R14 + RDX] 
CMOVNZ EAX, EDX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
