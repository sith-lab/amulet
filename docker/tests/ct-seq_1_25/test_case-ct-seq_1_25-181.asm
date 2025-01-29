.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, -28 # instrumentation
ADC RAX, -2140943029 
AND RDX, 0b1111111111111 # instrumentation
CMOVL ESI, dword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
ADC EAX, dword ptr [R14 + RSI] 
OR BL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV BL 
IMUL DX, BX 
CMP AL, 14 
SBB AL, DL 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RSI], SI 
ADD EDX, EDX 
CMOVLE EDI, ESI 
AND RCX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RCX], 121 
CMOVNO RBX, RSI 
AND RBX, 0b1111111111111 # instrumentation
SBB AX, word ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNZ EBX, dword ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNLE CX, word ptr [R14 + RSI] 
SBB RBX, -14 
AND RSI, 0b1111111111111 # instrumentation
CMOVB RBX, qword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RDI], RCX 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RSI], EBX 
MOV CL, -57 
AND RBX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RBX], BX 
AND RCX, 0b1111111111111 # instrumentation
CMOVNS DI, word ptr [R14 + RCX] 
NEG RBX 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RAX], -30 
AND RCX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RCX], 0b1000000000000000000000000000000 # instrumentation
BSR RBX, qword ptr [R14 + RCX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
