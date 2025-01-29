.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, -73 # instrumentation
MOVSX SI, BL 
CMOVP ESI, EDI 
CMOVO SI, CX 
XCHG DL, BL 
AND RDX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RDX], RCX 
AND RDX, 0b1111111111111 # instrumentation
LOCK OR dword ptr [R14 + RDX], ECX 
ADD SIL, 51 # instrumentation
LAHF  
AND RBX, 0b1111111111111 # instrumentation
AND ESI, dword ptr [R14 + RBX] 
CMOVNZ DX, AX 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RDX], -83 
SBB AX, 7995 
AND RSI, 0b1111111111111 # instrumentation
TEST word ptr [R14 + RSI], BX 
ADD DL, CL 
CMOVNLE ESI, EBX 
SUB ESI, 46 
AND RSI, 0b1111111111111 # instrumentation
AND qword ptr [R14 + RSI], RAX 
JMP .bb_main.1 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
LOCK AND dword ptr [R14 + RAX], ECX 
OR SI, 104 
AND SIL, -42 
AND RCX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RCX], 1 # instrumentation
AND DX, word ptr [R14 + RCX] # instrumentation
SHR DX, 1 # instrumentation
DIV word ptr [R14 + RCX] 
INC RDI 
AND RDI, 0b1111111111111 # instrumentation
SETNO byte ptr [R14 + RDI] 
ADD EDX, EDI 
TEST AX, -14573 
SETBE BL 
CMOVNS RDX, RAX 
SBB AX, -3705 
MOV EDX, -545094848 
JO .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
ADD SIL, -34 # instrumentation
CMOVO AX, DI 
OR EAX, -736445912 
OR DL, 1 # instrumentation
AND RSI, 0b1111111111111 # instrumentation
SETNL byte ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
LOCK XADD dword ptr [R14 + RCX], EDX 
AND RAX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RAX], 546980288 
AND RDX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RDX], CL 
AND RSI, 0b1111111111111 # instrumentation
MOV BL, byte ptr [R14 + RSI] 
IMUL RDI, RAX 
AND RDX, 0b1111111111111 # instrumentation
SUB DL, byte ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
AND CL, byte ptr [R14 + RDX] 
CMOVNO RDI, RAX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
