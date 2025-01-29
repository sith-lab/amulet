.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
LOCK INC qword ptr [R14 + RAX] 
CMOVP EAX, ECX 
SUB RCX, 45 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RBX], CL 
AND RCX, 0b1111111111111 # instrumentation
INC word ptr [R14 + RCX] 
CMOVNLE DI, SI 
AND RBX, 0b1111111111111 # instrumentation
CMOVNS RBX, qword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RBX], BX 
AND RAX, 0b1111111111111 # instrumentation
IMUL CX, word ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDX], EBX 
CMP AX, -24536 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RAX], AL 
AND RDI, 0b1111111111111 # instrumentation
CMOVNZ SI, word ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RSI], BL 
CMOVO ESI, EDI 
SBB RSI, RAX 
AND RCX, 0b1111111111111 # instrumentation
CMP RSI, qword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RDI], DL 
AND RSI, 0b1111111111111 # instrumentation
ADD SI, word ptr [R14 + RSI] 
ADD AL, AL 
AND RDI, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RDI], 75 
AND RCX, 0b1111111111111 # instrumentation
SBB ECX, dword ptr [R14 + RCX] 
MUL DIL 
XCHG DL, SIL 
AND RDX, 0b1111111111111 # instrumentation
CMOVO BX, word ptr [R14 + RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
