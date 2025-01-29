.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RBX], 94 
AND RDI, 0b1111111111111 # instrumentation
CMOVNP AX, word ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RDX], BX 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RSI], BL 
AND RDI, 0b1111111111111 # instrumentation
CMOVBE RSI, qword ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RAX], AX 
SUB EDI, EDI 
AND RSI, 0b1111111111111 # instrumentation
MUL qword ptr [R14 + RSI] 
JMP .bb_main.1 
.bb_main.1:
ADD RSI, RDX 
AND RSI, 0b1111111111111 # instrumentation
CMOVBE AX, word ptr [R14 + RSI] 
MUL AL 
ADD CL, BL 
AND RSI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RSI], 0b1000000000000000000000000000000 # instrumentation
BSR ESI, dword ptr [R14 + RSI] 
ADD SIL, 118 # instrumentation
CMOVLE ECX, EDI 
STC  
AND RAX, 0b1111111111111 # instrumentation
SBB DIL, byte ptr [R14 + RAX] 
IMUL RCX, RCX 
ADD DIL, 91 # instrumentation
JNBE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
CMOVL AX, word ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDX], DL 
CMOVNP EDX, ECX 
AND RDX, 0b1111111111111 # instrumentation
CMP CL, byte ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNZ ESI, dword ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
SBB AL, byte ptr [R14 + RAX] 
JMP .bb_main.3 
.bb_main.3:
AND RDX, 0b1111111111111 # instrumentation
MOVSX RBX, word ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RCX], CL 
CMOVNL RAX, RBX 
JNLE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RDX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDX], EDI 
MOVSX ESI, BX 
AND RBX, 0b1111111111111 # instrumentation
CMOVBE ECX, dword ptr [R14 + RBX] 
INC AL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
