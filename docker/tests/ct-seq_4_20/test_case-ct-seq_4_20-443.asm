.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RSI], 77 
JS .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDX], 106 
AND RCX, 0b1111111111111 # instrumentation
LOCK INC word ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RCX], AL 
AND RAX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RAX], 0b1000000000000000000000000000000 # instrumentation
BSF RAX, qword ptr [R14 + RAX] 
CMP EAX, -169315269 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RDI], DX 
JMP .bb_main.2 
.bb_main.2:
MOV ESI, ECX 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RCX], -27 
AND RBX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RBX], BL 
AND RDX, 0b1111111111111 # instrumentation
IMUL RAX, qword ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RBX] 
JMP .bb_main.3 
.bb_main.3:
AND RBX, 0b1111111111111 # instrumentation
CMOVO EBX, dword ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
DEC word ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RAX], CL 
AND RCX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RCX], -123 
AND RDX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RDX], -124 
AND RDX, 0b1111111111111 # instrumentation
CMOVP ESI, dword ptr [R14 + RDX] 
ADD AX, -155 
AND RCX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RCX], 127 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
