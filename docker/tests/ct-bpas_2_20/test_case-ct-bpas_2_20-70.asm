.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
CMOVNZ EBX, dword ptr [R14 + RCX] 
CMOVNS EDX, EAX 
OR DI, 1 # instrumentation
AND DX, DI # instrumentation
SHR DX, 1 # instrumentation
DIV DI 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RDI], EBX 
CMP AL, -105 
AND RDI, 0b1111111111111 # instrumentation
DEC word ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RDX] 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
INC BL 
AND RBX, 0b1111111111111 # instrumentation
CMOVNP DI, word ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RAX], BL 
CMOVP RBX, RDX 
AND RBX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RBX], -9 
AND RCX, 0b1111111111111 # instrumentation
CMOVNS EDX, dword ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK INC qword ptr [R14 + RBX] 
CMOVLE AX, CX 
DEC SIL 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RCX], ESI 
MOV DIL, AL 
AND RBX, 0b1111111111111 # instrumentation
CMOVNLE CX, word ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
