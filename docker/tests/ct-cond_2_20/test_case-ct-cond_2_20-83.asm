.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RDI], RDI 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RCX], 119 
AND RCX, 0b1111111111111 # instrumentation
CMOVNZ BX, word ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDX], AL 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RDI], CX 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RDX], 85 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RDX], BL 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RAX], SI 
AND RAX, 0b1111111111111 # instrumentation
SUB RBX, qword ptr [R14 + RAX] 
SBB AL, -19 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RAX], SI 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RDX], EBX 
BSWAP EDX 
AND RAX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RAX], CL 
OR DI, 1 # instrumentation
AND DX, DI # instrumentation
SHR DX, 1 # instrumentation
DIV DI 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RAX], DL 
AND RCX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RCX], EDI 
AND RDX, 0b1111111111111 # instrumentation
INC dword ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RBX], BL 
AND RDX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDX], 0b1000000000000000000000000000000 # instrumentation
BSR RAX, qword ptr [R14 + RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
