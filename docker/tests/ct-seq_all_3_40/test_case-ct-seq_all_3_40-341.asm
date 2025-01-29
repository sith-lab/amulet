.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RAX], DL 
AND RDI, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RDI], EDX 
SETNO SIL 
ADC DL, -47 
CMOVNZ BX, SI 
AND RSI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RSI], DI 
AND RBX, 0b1111111111111 # instrumentation
TEST qword ptr [R14 + RBX], 1878703078 
XOR RAX, 1116698891 
TEST DX, -10048 
AND SIL, DL 
OR BL, DL 
SBB CL, CL 
XCHG AX, AX 
AND RSI, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RSI], 31 
CMC  
NOT AX 
JMP .bb_main.1 
.bb_main.1:
OR BL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV BL 
AND RDI, 0b1111111111111 # instrumentation
MOVSX EAX, byte ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDI], BL 
AND RCX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RCX], -13 
XOR ESI, -79 
NEG CL 
AND RBX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RBX], BX 
SETNLE DL 
AND AX, -22423 
OR CX, CX 
MUL DIL 
JB .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RSI], 95 
CMOVNZ RDX, RAX 
AND RDI, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RDI], AL 
CMOVNB RAX, RDI 
AND RCX, 0b1111111111111 # instrumentation
LOCK XOR dword ptr [R14 + RCX], ESI 
CMOVNS RSI, RAX 
MOV DL, -107 
AND RCX, 0b1111111111111 # instrumentation
IMUL byte ptr [R14 + RCX] 
XOR DI, SI 
SETNB AL 
AND RDI, 0b1111111111111 # instrumentation
LOCK AND dword ptr [R14 + RDI], -56 
ADD RDI, 20 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
