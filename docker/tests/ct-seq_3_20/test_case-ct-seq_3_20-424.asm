.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
CMP RBX, qword ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
INC word ptr [R14 + RSI] 
ADC AX, 17808 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RSI], CX 
MOVSX RCX, DL 
AND RBX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RBX], -92 
AND RBX, 0b1111111111111 # instrumentation
SBB DI, word ptr [R14 + RBX] 
ADC RDX, 44 
AND RDX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDX], RAX 
CMOVNBE ESI, EAX 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RAX], SI 
AND RBX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RBX] 
CMOVNB RDX, RBX 
AND RCX, 0b1111111111111 # instrumentation
CMOVZ DX, word ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RAX], -13 
LOOPE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDX], 0b1000000000000000 # instrumentation
BSR DX, word ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNS SI, word ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RBX], 1 # instrumentation
AND EDX, dword ptr [R14 + RBX] # instrumentation
SHR EDX, 1 # instrumentation
DIV dword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNP CX, word ptr [R14 + RDX] 
CMOVNBE EDI, ECX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
