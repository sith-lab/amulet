.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
AND RDX, 0b1111111111111 # instrumentation
CMOVNO EDX, dword ptr [R14 + RDX] 
CMP RBX, 11 
XCHG DI, AX 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
CMPSB  
ADD RDX, 56 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RDX], 54 
ADD AL, 38 
AND RDX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RDX], -40 
AND RBX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RBX], -77 
AND RCX, 0b1111111111111 # instrumentation
MOVSX RDX, word ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RAX], CL 
AND RCX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RCX], -122 
CMOVNLE DX, DI 
AND RAX, 0b1111111111111 # instrumentation
SBB EDX, dword ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RAX], CL 
AND RSI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RSI], DL 
SUB CL, BL 
SUB AX, CX 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, qword ptr [R14 + RSI] 
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
SUB CL, DL 
AND RSI, 0b1111111111111 # instrumentation
CMP AX, word ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RBX], DX 
CMP AX, -24142 
ADD AX, -16347 
AND RAX, 0b1111111111111 # instrumentation
SBB AL, byte ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
MOV DIL, byte ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RCX], -85 
ADC DX, DX 
AND RBX, 0b1111111111111 # instrumentation
CMOVNO RBX, qword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
MOVZX EDX, word ptr [R14 + RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
