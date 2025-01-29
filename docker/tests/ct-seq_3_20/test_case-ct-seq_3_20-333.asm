.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
IMUL CX, AX 
AND RDI, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RDI], EDI 
AND RAX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RAX], DL 
AND RSI, 0b1111111111111 # instrumentation
CMOVNP RSI, qword ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RSI], AL 
AND RBX, 0b1111111111111 # instrumentation
CMOVZ EBX, dword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RDX], CL 
JZ .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
MOV ESI, -1342844257 
AND RSI, 0b1111111111111 # instrumentation
ADD ESI, dword ptr [R14 + RSI] 
MOVZX RDX, BL 
AND RSI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RSI], BX 
AND RCX, 0b1111111111111 # instrumentation
CMOVNLE DI, word ptr [R14 + RCX] 
JMP .bb_main.2 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
MOV EBX, dword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVL RAX, qword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RCX], -110 
AND RDX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RDX], 12 
AND RBX, 0b1111111111111 # instrumentation
ADD DL, byte ptr [R14 + RBX] 
CMOVNP RDX, RCX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNO RDX, qword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNL AX, word ptr [R14 + RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
