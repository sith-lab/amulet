.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
DEC word ptr [R14 + RCX] 
CMOVO RBX, RAX 
NEG DI 
IMUL EDI, EAX, 87 
AND RAX, 0b1111111111111 # instrumentation
NEG dword ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RAX], 117 
ADD DL, CL 
AND RDI, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RDI], -69 
CMOVBE DI, DI 
AND RBX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RBX], 1 # instrumentation
AND DX, word ptr [R14 + RBX] # instrumentation
SHR DX, 1 # instrumentation
DIV word ptr [R14 + RBX] 
ADD DIL, 102 # instrumentation
CMOVNZ ECX, ESI 
SUB RDX, RSI 
AND RDX, 0b1111111111111 # instrumentation
DEC word ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
ADD RAX, qword ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
LOCK NEG dword ptr [R14 + RSI] 
SAHF  
AND RDX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RDX], RSI 
CMOVNP DX, BX 
SUB RAX, RDX 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RAX], CX 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RDI], -27 
CMP SIL, CL 
AND RDX, 0b1111111111111 # instrumentation
CMP BL, byte ptr [R14 + RDX] 
CLD  
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RDX], ESI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
