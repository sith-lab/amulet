.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RCX], -19 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RDX], CL 
AND RDX, 0b1111111111111 # instrumentation
SBB RDI, qword ptr [R14 + RDX] 
OR CX, 1 # instrumentation
AND DX, CX # instrumentation
SHR DX, 1 # instrumentation
DIV CX 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RDI], DIL 
AND RAX, 0b1111111111111 # instrumentation
CMOVNL ECX, dword ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RAX], 112 
AND RAX, 0b1111111111111 # instrumentation
ADD DL, byte ptr [R14 + RAX] 
MOVSX ECX, CX 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RDI], EDX 
AND RDI, 0b1111111111111 # instrumentation
CMP CX, word ptr [R14 + RDI] 
DEC RAX 
ADD SI, DI 
AND RCX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RCX], 1 # instrumentation
MOV AX, 1 # instrumentation
DIV byte ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RDX], 68 
AND RBX, 0b1111111111111 # instrumentation
ADC AL, byte ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNLE EDX, dword ptr [R14 + RAX] 
SUB DL, 90 
AND RDI, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RDI], DL 
CMOVO DI, BX 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RBX], CL 
ADC EDI, 45 
ADC EAX, 15 
AND RSI, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RSI], SI 
AND RBX, 0b1111111111111 # instrumentation
NEG dword ptr [R14 + RBX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
