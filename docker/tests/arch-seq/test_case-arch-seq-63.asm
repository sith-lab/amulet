.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
XADD CX, DI 
TEST BL, 64 
CMOVNS RDI, RAX 
IMUL EAX, EDX, -18 
AND RAX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RAX], AL 
AND RCX, 0b1111111111111 # instrumentation
CMOVS RAX, qword ptr [R14 + RCX] 
XOR EBX, ESI 
CMPXCHG BL, DIL 
AND RCX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RCX], RBX 
AND RAX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RAX], EBX 
AND RCX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RCX], 111 
SBB RCX, 71 
AND RAX, 0b1111111111111 # instrumentation
LOCK NEG byte ptr [R14 + RAX] 
ADD RAX, -675594425 
SETNS AL 
AND RDI, 0b1111111111111 # instrumentation
XADD dword ptr [R14 + RDI], EDX 
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
OR BL, BL 
AND RDX, 0b1111111111111 # instrumentation
ADC RAX, qword ptr [R14 + RDX] 
IMUL ESI 
AND RDX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RDX], 6 
AND RCX, 0b1111111111111 # instrumentation
CMOVO EDX, dword ptr [R14 + RCX] 
OR AX, -26836 
AND RBX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RBX], -97 
XADD AL, AL 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RAX], ESI 
AND RCX, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RCX], ECX 
JMP .bb_main.2 
.bb_main.2:
CLD  # instrumentation
CMP CL, CL 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
CMPSW  
AND RSI, 0b1111111111111 # instrumentation
XOR ESI, dword ptr [R14 + RSI] 
CMOVL AX, DX 
CMOVNZ RCX, RDX 
CMOVS EAX, ESI 
OR AX, 9655 
XADD BL, DL 
CMOVB SI, AX 
AND RDX, 0b1111111111111 # instrumentation
SETNB byte ptr [R14 + RDX] 
CMOVNLE CX, BX 
OR EAX, -1222416995 
AND RAX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RAX], 113 
OR SI, 1 # instrumentation
AND DX, SI # instrumentation
SHR DX, 1 # instrumentation
DIV SI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
