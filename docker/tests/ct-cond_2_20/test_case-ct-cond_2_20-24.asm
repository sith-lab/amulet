.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
DEC word ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RDX], DX 
AND RAX, 0b1111111111111 # instrumentation
CMOVO SI, word ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNL ESI, dword ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
CMP RCX, qword ptr [R14 + RBX] 
IMUL BL 
AND RBX, 0b1111111111111 # instrumentation
SUB DX, word ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
ADD BL, byte ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RCX], AX 
JNBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD DIL, 67 # instrumentation
SBB RCX, -47 
AND RDI, 0b1111111111111 # instrumentation
ADC ESI, dword ptr [R14 + RDI] 
LEA ECX, qword ptr [RDX + RCX] 
AND RSI, 0b1111111111111 # instrumentation
ADC DL, byte ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RDX], 14 
AND RSI, 0b1111111111111 # instrumentation
CMOVNP DX, word ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK DEC word ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
CMP CL, byte ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
SBB ESI, dword ptr [R14 + RCX] 
ADD EAX, 1482625293 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
