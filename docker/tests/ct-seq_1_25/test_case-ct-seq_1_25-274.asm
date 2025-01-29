.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
SUB AL, 52 
AND RBX, 0b1111111111111 # instrumentation
CMOVNO RDI, qword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RBX], DI 
SBB CL, CL 
MOV AL, -100 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RDX], 32 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RDX], ECX 
AND RAX, 0b1111111111111 # instrumentation
SUB AL, byte ptr [R14 + RAX] 
ADC EAX, 100 
AND RSI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RSI], 2060243979 
AND RSI, 0b1111111111111 # instrumentation
CMOVNS DI, word ptr [R14 + RSI] 
SBB AL, -9 
MOVZX EDX, SIL 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RDX], AL 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RSI], SI 
AND RBX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RBX], AX 
AND RDI, 0b1111111111111 # instrumentation
CMOVZ EBX, dword ptr [R14 + RDI] 
CMOVNS RBX, RAX 
AND RCX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RCX], -667546783 
MOVSX ECX, DL 
AND RBX, 0b1111111111111 # instrumentation
ADD DL, byte ptr [R14 + RBX] 
CMOVZ CX, DX 
ADC ECX, -83 
AND RBX, 0b1111111111111 # instrumentation
CMOVNP SI, word ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RAX], CL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
