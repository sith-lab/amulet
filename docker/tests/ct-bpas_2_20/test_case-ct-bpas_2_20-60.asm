.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
CMOVB EDX, dword ptr [R14 + RAX] 
IMUL EDX, EAX 
AND RCX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RCX], RDI 
AND RBX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RBX], SI 
CMP SIL, DIL 
AND RDX, 0b1111111111111 # instrumentation
CMP AL, byte ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RDI], -3 
OR CX, 1 # instrumentation
AND DX, CX # instrumentation
SHR DX, 1 # instrumentation
DIV CX 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RCX], -103 
SBB AL, DL 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
MOVSX EDI, byte ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RBX], BX 
AND RDI, 0b1111111111111 # instrumentation
CMOVB EDX, dword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RBX], DX 
OR BX, 0b1000000000000000 # instrumentation
BSR CX, BX 
MOV SIL, -102 
AND RDI, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RDI], -71 
AND RBX, 0b1111111111111 # instrumentation
ADC DIL, byte ptr [R14 + RBX] 
IMUL RDI 
AND RDI, 0b1111111111111 # instrumentation
DEC qword ptr [R14 + RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
