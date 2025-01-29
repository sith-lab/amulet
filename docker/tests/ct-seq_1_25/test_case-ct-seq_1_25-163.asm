.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, 47 # instrumentation
CMOVP BX, DX 
AND RBX, 0b1111111111111 # instrumentation
CMOVBE DI, word ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNS RDX, qword ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
IMUL RDI, qword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RAX], 5 
AND RAX, 0b1111111111111 # instrumentation
CMP RDX, qword ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RAX], -6 
AND RDX, 0b1111111111111 # instrumentation
SUB DX, word ptr [R14 + RDX] 
CMOVB RCX, RAX 
CMOVL SI, BX 
LEA RAX, qword ptr [RAX] 
CMOVNLE RDX, RSI 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RAX], 97 
AND RDX, 0b1111111111111 # instrumentation
MOV RBX, qword ptr [R14 + RDX] 
CMOVNB RDI, RCX 
LEA RDX, qword ptr [RDI + RSI + 63248] 
AND RBX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RBX], RBX 
AND RDI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDI], AL 
OR DIL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV DIL 
AND RCX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RCX], AL 
CMOVB CX, SI 
AND RAX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RAX], RCX 
AND RDI, 0b1111111111111 # instrumentation
CMOVLE ESI, dword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RBX], -99 
SBB AX, 10446 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
