.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RSI], ESI 
AND RAX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RAX], -35 
AND RAX, 0b1111111111111 # instrumentation
LOCK INC dword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
ADC EDX, dword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVBE BX, word ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
MOVZX RBX, word ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RBX], DL 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
CMOVNLE RCX, qword ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNZ ECX, dword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDX], DIL 
AND RAX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RAX], 0b1000000000000000 # instrumentation
BSR DI, word ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RBX], -126 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RDI], CX 
JMP .bb_main.2 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RCX], RAX 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RAX], RAX 
AND RSI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RSI], RDX 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RDX], RDX 
AND RAX, 0b1111111111111 # instrumentation
CMOVLE ESI, dword ptr [R14 + RAX] 
ADD CL, AL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
