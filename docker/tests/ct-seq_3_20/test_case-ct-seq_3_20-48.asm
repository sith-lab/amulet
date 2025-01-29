.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RDI], -51 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RCX], SIL 
AND RDX, 0b1111111111111 # instrumentation
CMOVB BX, word ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RBX], EAX 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RBX], 44 
AND RAX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RAX], SI 
JBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
IMUL RDI, RBX 
AND RBX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RBX], RDI 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RBX], 3 
AND RDI, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RDI], 65 
AND RBX, 0b1111111111111 # instrumentation
LOCK DEC word ptr [R14 + RBX] 
ADC RAX, RSI 
JB .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RAX], -80 
AND RDI, 0b1111111111111 # instrumentation
CMOVNB AX, word ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDX], DL 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RDI], AL 
AND RAX, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
CMP ESI, dword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RAX], -100 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
