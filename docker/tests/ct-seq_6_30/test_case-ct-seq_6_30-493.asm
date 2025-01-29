.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CMP CX, CX 
AND RAX, 0b1111111111111 # instrumentation
NEG dword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RDX], -36 
CMOVS RSI, RDX 
JNZ .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
IMUL RAX 
AND RDX, 0b1111111111111 # instrumentation
LOCK DEC word ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
DEC dword ptr [R14 + RDX] 
OR RDI, 0b1000000000000000000000000000000 # instrumentation
BSF RDX, RDI 
CMP CL, AL 
JMP .bb_main.2 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RAX], RBX 
AND RDX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RDX], DL 
AND RAX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RAX], CL 
JNBE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
ADD SIL, -69 # instrumentation
CMOVLE SI, DX 
AND RDI, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RAX], AL 
AND RDX, 0b1111111111111 # instrumentation
IMUL qword ptr [R14 + RDX] 
ADD DIL, 1 # instrumentation
CMOVLE EBX, ESI 
AND RSI, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RSI], -58 
OR CX, 1 # instrumentation
AND DX, CX # instrumentation
SHR DX, 1 # instrumentation
DIV CX 
JMP .bb_main.4 
.bb_main.4:
CMP CX, DI 
AND RDI, 0b1111111111111 # instrumentation
MUL word ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
LOCK DEC word ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
LOCK DEC dword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RDI], CL 
AND RSI, 0b1111111111111 # instrumentation
SUB DX, word ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
NEG dword ptr [R14 + RDX] 
JMP .bb_main.5 
.bb_main.5:
MOVSX SI, BL 
AND RDX, 0b1111111111111 # instrumentation
CMOVNLE CX, word ptr [R14 + RDX] 
CMOVNLE EDI, ESI 
AND RBX, 0b1111111111111 # instrumentation
SBB RBX, qword ptr [R14 + RBX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
