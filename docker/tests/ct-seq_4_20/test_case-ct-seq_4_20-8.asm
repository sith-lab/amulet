.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RBX], RBX 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RCX], 83 
AND RDX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDX], -93 
CMOVBE CX, CX 
AND RDX, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RDX] 
LOOPNE .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RAX], 55 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RDI], CL 
ADD ESI, EDX 
CMOVNO RAX, RDI 
AND RAX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RAX], AL 
AND RBX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RBX], RAX 
AND RDI, 0b1111111111111 # instrumentation
MOV EBX, dword ptr [R14 + RDI] 
JMP .bb_main.2 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RDX], SI 
JP .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RAX, 0b1111111111111 # instrumentation
MUL word ptr [R14 + RAX] 
CMOVNB DX, CX 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RSI], DL 
AND RBX, 0b1111111111111 # instrumentation
CMOVB BX, word ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RAX], CX 
CMOVNZ DX, DI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
