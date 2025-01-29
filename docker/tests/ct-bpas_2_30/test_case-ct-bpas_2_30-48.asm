.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD AX, 125 
CMOVNS CX, BX 
AND RCX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RCX], 107 
AND RDI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDI], -1312456680 
AND RSI, 0b1111111111111 # instrumentation
MUL word ptr [R14 + RSI] 
MOVSX RDX, AL 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RBX], DL 
SUB DX, -106 
AND RSI, 0b1111111111111 # instrumentation
IMUL byte ptr [R14 + RSI] 
DEC BL 
AND RCX, 0b1111111111111 # instrumentation
MOVZX DI, byte ptr [R14 + RCX] 
CMP EAX, -849134530 
MOVSX AX, SIL 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD SIL, -2 # instrumentation
CMOVNLE RDX, RBX 
CMOVNP DX, BX 
AND RSI, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RSI], 34 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RDI], DX 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RCX], 54 
MOVZX RDX, DX 
AND RCX, 0b1111111111111 # instrumentation
CMOVBE RBX, qword ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RAX], EDX 
AND RDX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RDX], -124 
IMUL RSI, RCX 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RDI], ECX 
AND RAX, 0b1111111111111 # instrumentation
SBB BL, byte ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
INC byte ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RCX], CX 
AND RDI, 0b1111111111111 # instrumentation
INC word ptr [R14 + RDI] 
OR SI, 0b1000000000000000 # instrumentation
BSF SI, SI 
ADD SIL, 39 # instrumentation
ADC BL, DL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
