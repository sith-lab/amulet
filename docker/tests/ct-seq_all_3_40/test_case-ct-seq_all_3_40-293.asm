.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, 15 # instrumentation
SETBE CL 
ADD DL, BL 
ADD ECX, -8 
CMOVNZ ESI, EDI 
OR DI, 0b1000000000000000 # instrumentation
BSF DX, DI 
ADD DIL, 105 # instrumentation
CMOVNB EBX, ECX 
OR CX, 1 # instrumentation
AND DX, CX # instrumentation
SHR DX, 1 # instrumentation
DIV CX 
AND RAX, 0b1111111111111 # instrumentation
SETNO byte ptr [R14 + RAX] 
CMOVNZ DX, SI 
XOR AL, -63 
CMOVNB EAX, EBX 
XOR AL, 63 
CLC  
NOT DX 
SETL BL 
SETO BL 
JL .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
ADD DIL, 56 # instrumentation
SBB ECX, EDI 
OR AX, -24817 
AND RDI, 0b1111111111111 # instrumentation
NOT qword ptr [R14 + RDI] 
SBB DL, CL 
XOR EAX, -654338764 
SUB SI, DI 
XOR BL, -55 
CMOVNB RAX, RDX 
CMOVNBE EAX, ESI 
SETNZ AL 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RSI], AL 
AND RSI, 0b1111111111111 # instrumentation
IMUL BX, word ptr [R14 + RSI], 52 
AND RAX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RAX], DI 
AND RAX, 0b1111111111111 # instrumentation
CMOVBE SI, word ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNBE EAX, dword ptr [R14 + RDI] 
XOR SIL, -62 
CMOVNP DI, BX 
ADD DL, -128 
ADD DIL, BL 
JMP .bb_main.2 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
SETL byte ptr [R14 + RSI] 
SETB CL 
AND RBX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RBX], 87 
CMOVNZ EBX, EDX 
SETL BL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
