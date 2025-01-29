.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
BSWAP RDX 
OR EDI, 1 # instrumentation
AND EDX, EDI # instrumentation
SHR EDX, 1 # instrumentation
DIV EDI 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RCX], ESI 
OR EBX, 0b1000000000000000000000000000000 # instrumentation
BSF EDX, EBX 
ADD DIL, -60 # instrumentation
CMOVBE BX, DX 
SUB RDX, RBX 
ADD RSI, RSI 
AND RDX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RDX], 24 
AND RBX, 0b1111111111111 # instrumentation
MOVSX RBX, word ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RCX], BL 
AND RSI, 0b1111111111111 # instrumentation
SBB RDX, qword ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
MOV BL, byte ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
LOCK DEC dword ptr [R14 + RDI] 
MOVZX SI, DL 
ADC EDX, -42 
DEC AX 
IMUL DX 
ADC AL, -95 
AND RBX, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNBE EDI, dword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RDX], 17 
SUB EAX, -14 
AND RDX, 0b1111111111111 # instrumentation
CMOVL EAX, dword ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RBX], ESI 
AND RBX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RBX], -55 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
