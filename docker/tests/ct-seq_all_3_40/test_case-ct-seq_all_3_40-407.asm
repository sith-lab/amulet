.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
CMOVNP ECX, dword ptr [R14 + RAX] 
CMOVNO CX, AX 
MOV DIL, DIL 
AND RCX, 0b1111111111111 # instrumentation
OR BL, byte ptr [R14 + RCX] 
ADD AX, 2308 
SETNO BL 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RCX], 126 
SETP CL 
AND RAX, 0b1111111111111 # instrumentation
CMOVNBE EDI, dword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
ADD SI, word ptr [R14 + RDX] 
OR CL, 28 
CMOVS AX, SI 
AND RBX, 0b1111111111111 # instrumentation
MOVSX EBX, byte ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RDX] 
SUB AX, 27647 
AND RDX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RDX], SI 
MOV RDX, -2917125043924087794 
NEG EDI 
AND RCX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RCX], 42 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
IMUL EDX, ESI, 42 
OR EDX, 0b1000000000000000000000000000000 # instrumentation
BSF EDI, EDX 
CMPXCHG AL, DL 
ADD RAX, 66 
AND RDX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDX], DL 
ADD DL, CL 
AND RCX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RCX], 1 # instrumentation
AND DX, word ptr [R14 + RCX] # instrumentation
SHR DX, 1 # instrumentation
DIV word ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK DEC word ptr [R14 + RAX] 
SETNL DL 
AND RBX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RBX], EAX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNLE DI, word ptr [R14 + RDI] 
JMP .bb_main.2 
.bb_main.2:
CLD  # instrumentation
ADD RDI, RCX 
NEG DX 
TEST RAX, 125390670 
SBB DL, DL 
AND RSI, 0b1111111111111 # instrumentation
SBB DL, byte ptr [R14 + RSI] 
ADC AL, 5 
TEST RAX, -1098271723 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
LODSD  
AND RDX, 0b1111111111111 # instrumentation
AND DL, byte ptr [R14 + RDX] 
SETO AL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
