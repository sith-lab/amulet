.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RBX] 
OR ESI, 1 # instrumentation
AND EDX, ESI # instrumentation
SHR EDX, 1 # instrumentation
DIV ESI 
AND DI, -84 
AND RAX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RAX], DX 
IMUL RDX, RDX 
AND RBX, 0b1111111111111 # instrumentation
CMOVZ RAX, qword ptr [R14 + RBX] 
CMP RBX, RCX 
CMOVO CX, DX 
AND RDX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RDX], -37 
MOVZX RSI, DX 
AND RAX, 0b1111111111111 # instrumentation
LOCK AND byte ptr [R14 + RAX], BL 
XOR EAX, 1074928280 
INC RDI 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RBX], 28 
OR DI, AX 
XOR SI, 53 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
LOCK OR dword ptr [R14 + RDI], EAX 
CMOVNLE RSI, RCX 
AND RDI, 0b1111111111111 # instrumentation
MOVSX EDX, byte ptr [R14 + RDI] 
ADD SIL, -123 
SETNS CL 
INC RAX 
AND RSI, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RSI], 90 
ADC AL, AL 
OR AL, 14 
CMOVL EDX, ECX 
IMUL CL 
CMP SI, 11 
JMP .bb_main.2 
.bb_main.2:
CWDE  
IMUL ECX, EBX 
AND RAX, 0b1111111111111 # instrumentation
CMOVNBE EBX, dword ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RDI], BX 
ADC RAX, -2012629311 
CMP EAX, 1870304992 
AND RDI, 0b1111111111111 # instrumentation
CMOVNBE RDX, qword ptr [R14 + RDI] 
SUB DX, DI 
AND RSI, 0b1111111111111 # instrumentation
LOCK NEG dword ptr [R14 + RSI] 
SBB EBX, EAX 
IMUL DL 
AND RSI, 0b1111111111111 # instrumentation
OR DX, word ptr [R14 + RSI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
