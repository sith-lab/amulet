.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, 90 # instrumentation
MOVSX EBX, SI 
CMOVNL AX, DI 
OR EAX, 1 # instrumentation
AND EDX, EAX # instrumentation
SHR EDX, 1 # instrumentation
DIV EAX 
AND RDI, 0b1111111111111 # instrumentation
MOVSX RAX, byte ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RCX], AX 
AND RSI, 0b1111111111111 # instrumentation
CMOVBE RDX, qword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RDI], BL 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RCX], 55 
JNBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RDX], -6 
AND RDX, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RDX] 
CMOVNLE DX, AX 
AND RAX, 0b1111111111111 # instrumentation
CMOVNB RSI, qword ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
MOVZX ESI, byte ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
DEC word ptr [R14 + RDI] 
CMP ECX, EDX 
XCHG ESI, EAX 
JLE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
ADD DIL, -46 # instrumentation
CMOVNBE EAX, EBX 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RDX], -25 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RBX], -101 
AND RDX, 0b1111111111111 # instrumentation
MOV RBX, qword ptr [R14 + RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
