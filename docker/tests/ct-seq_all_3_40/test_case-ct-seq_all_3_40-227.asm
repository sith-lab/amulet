.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, -30 # instrumentation
SETNP DL 
CMOVL RAX, RAX 
OR AX, -24603 
CMOVNB DI, SI 
MOV DI, BX 
AND RSI, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RSI], CL 
SETNLE BL 
CMP SIL, SIL 
AND RCX, 0b1111111111111 # instrumentation
NOT word ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDI], ECX 
AND RBX, 0b1111111111111 # instrumentation
LOCK AND byte ptr [R14 + RBX], -113 
CMP EAX, -530407925 
IMUL RDI 
IMUL CL 
JMP .bb_main.1 
.bb_main.1:
ADD SIL, -123 # instrumentation
SBB DL, AL 
AND RBX, 0b1111111111111 # instrumentation
LOCK INC dword ptr [R14 + RBX] 
CMOVNLE DI, DI 
IMUL RDX 
ADD DIL, -32 # instrumentation
CLD  
CMOVP RBX, RCX 
CMOVNS RDX, RDX 
AND RSI, 0b1111111111111 # instrumentation
SETNO byte ptr [R14 + RSI] 
IMUL RAX, RDX, -53 
MOVSX ESI, BL 
CMP AX, 2611 
AND RAX, 0b1111111111111 # instrumentation
LOCK AND byte ptr [R14 + RAX], AL 
AND RDI, 0b1111111111111 # instrumentation
CMOVNBE EBX, dword ptr [R14 + RDI] 
SBB AL, AL 
AND RSI, 0b1111111111111 # instrumentation
XADD dword ptr [R14 + RSI], EDX 
AND DIL, 85 
AND RSI, 0b1111111111111 # instrumentation
ADD RAX, qword ptr [R14 + RSI] 
JNP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
CMOVLE RDI, qword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVB RAX, qword ptr [R14 + RDX] 
MOV RCX, 8050914709416519060 
AND RCX, 0b1111111111111 # instrumentation
OR ESI, dword ptr [R14 + RCX] 
NOT AX 
CMOVBE RDI, RBX 
XOR BL, AL 
MOV CL, -23 
AND RDI, 0b1111111111111 # instrumentation
CMOVNZ EAX, dword ptr [R14 + RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
