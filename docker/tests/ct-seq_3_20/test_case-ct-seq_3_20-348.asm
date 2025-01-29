.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RCX], ESI 
IMUL CL 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RBX], ECX 
AND RDX, 0b1111111111111 # instrumentation
MUL word ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNZ RCX, qword ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RAX], 71 
OR EBX, 0b1000000000000000000000000000000 # instrumentation
BSF ECX, EBX 
AND RBX, 0b1111111111111 # instrumentation
CMOVNB AX, word ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
IMUL RBX, qword ptr [R14 + RDX] 
LOOP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RAX], AX 
AND RSI, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RSI], RDI 
MOV RDX, RBX 
AND RCX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RCX], DL 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RCX], RDX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNBE EAX, dword ptr [R14 + RDI] 
JMP .bb_main.2 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RCX], AL 
AND RBX, 0b1111111111111 # instrumentation
CMOVNL CX, word ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RDX], -10 
CMOVNO RAX, RDI 
AND RAX, 0b1111111111111 # instrumentation
IMUL word ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
