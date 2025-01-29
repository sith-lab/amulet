.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RBX], RCX 
AND RCX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RCX], -119 
AND RSI, 0b1111111111111 # instrumentation
CMP BL, byte ptr [R14 + RSI] 
INC AL 
AND RSI, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RSI], -31 
AND RAX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RAX], 18 
MOVSX RSI, CL 
CMOVB SI, BX 
AND RCX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RCX], EAX 
AND RBX, 0b1111111111111 # instrumentation
LOCK INC dword ptr [R14 + RBX] 
JLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RDX], 66 
AND RDX, 0b1111111111111 # instrumentation
SUB ECX, dword ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVL ESI, dword ptr [R14 + RDI] 
SBB CX, BX 
AND RDI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDI], DX 
CMOVL AX, DX 
CMOVNP BX, CX 
AND RAX, 0b1111111111111 # instrumentation
LOCK INC byte ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RDX], 104 
AND RAX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RAX], ECX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
