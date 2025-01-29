.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, 77 # instrumentation
ADC BL, -62 
AND RCX, 0b1111111111111 # instrumentation
ADC DI, word ptr [R14 + RCX] 
DEC AX 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RCX], AL 
IMUL CL 
MOVZX RAX, AX 
JB .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
CMOVLE ESI, dword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
IMUL RSI, qword ptr [R14 + RDI] 
ADD DIL, -27 # instrumentation
LOOPE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RCX], AL 
AND RDI, 0b1111111111111 # instrumentation
IMUL RAX, qword ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RSI], DX 
MUL BL 
AND RDX, 0b1111111111111 # instrumentation
CMOVNB RSI, qword ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
ADC DIL, byte ptr [R14 + RCX] 
JMP .bb_main.3 
.bb_main.3:
AND RBX, 0b1111111111111 # instrumentation
CMOVNZ BX, word ptr [R14 + RBX] 
ADD AL, CL 
CMOVNP EDX, EAX 
AND RBX, 0b1111111111111 # instrumentation
SUB DI, word ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RCX], SI 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RAX], DI 
MOV DL, AL 
AND RDI, 0b1111111111111 # instrumentation
MOVZX RDI, word ptr [R14 + RDI] 
CMOVNB RBX, RBX 
AND RAX, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RAX] 
JMP .bb_main.4 
.bb_main.4:
ADD DL, BL 
MOVSX RCX, AL 
STD  
AND RDI, 0b1111111111111 # instrumentation
CMOVZ RCX, qword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RDI], DL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
