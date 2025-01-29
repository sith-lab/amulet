.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, -36 # instrumentation
ADC ECX, EAX 
AND RBX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RBX], 72 
AND RBX, 0b1111111111111 # instrumentation
CMOVNLE ECX, dword ptr [R14 + RBX] 
MOV AX, -5092 
CMP SIL, -81 
NEG AL 
SUB EAX, -26 
ADC ESI, EAX 
MOVSX DX, CL 
AND RAX, 0b1111111111111 # instrumentation
CMOVNS RDI, qword ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
CMP RBX, qword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RDX], SIL 
AND RCX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RCX], BL 
AND RDI, 0b1111111111111 # instrumentation
CMOVNP RDI, qword ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
ADD CL, byte ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RCX], 0b1000000000000000000000000000000 # instrumentation
BSR RDI, qword ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RSI], CL 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RSI], DL 
AND RAX, 0b1111111111111 # instrumentation
CMP EDX, dword ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
MOVSX EAX, word ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
MOV BL, byte ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVO CX, word ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RAX], -125 
AND RDI, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RDI], -107 
AND RCX, 0b1111111111111 # instrumentation
CMOVNB ECX, dword ptr [R14 + RCX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
