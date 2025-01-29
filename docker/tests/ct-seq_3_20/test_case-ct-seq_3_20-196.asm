.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RBX], DL 
AND RAX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RAX], BL 
JNBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD EAX, 1164235723 
AND RAX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RAX], -18 
AND RDX, 0b1111111111111 # instrumentation
CMOVZ AX, word ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RDX], -3 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RDX], 19 
MOVSX AX, DIL 
DEC CL 
AND RDI, 0b1111111111111 # instrumentation
ADD CL, byte ptr [R14 + RDI] 
JNBE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDI], 1 # instrumentation
AND EDX, dword ptr [R14 + RDI] # instrumentation
SHR EDX, 1 # instrumentation
DIV dword ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RCX], DX 
AND RAX, 0b1111111111111 # instrumentation
CMP RSI, qword ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RBX], BL 
AND RDX, 0b1111111111111 # instrumentation
CMOVP EAX, dword ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNB DI, word ptr [R14 + RAX] 
ADD EAX, 1954039479 
SUB AL, -21 
ADC BL, DIL 
AND RDX, 0b1111111111111 # instrumentation
CMOVL CX, word ptr [R14 + RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
