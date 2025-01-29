.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
ADC DX, word ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
ADC SI, word ptr [R14 + RDX] 
BSWAP RSI 
AND RSI, 0b1111111111111 # instrumentation
CMOVNS ESI, dword ptr [R14 + RSI] 
ADD RAX, 957319890 
AND RAX, 0b1111111111111 # instrumentation
CMOVL DX, word ptr [R14 + RAX] 
IMUL CX 
AND RSI, 0b1111111111111 # instrumentation
CMOVB ESI, dword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDI], -60 
NEG DX 
SBB AL, -89 
CMOVNB RCX, RDX 
AND RDI, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RDI], 1 # instrumentation
MOV AX, 1 # instrumentation
DIV byte ptr [R14 + RDI] 
ADD SI, -27 
OR ECX, 0b1000000000000000000000000000000 # instrumentation
BSF EAX, ECX 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RDI], RDI 
MOVZX DI, BL 
CMOVL RAX, RSI 
AND RCX, 0b1111111111111 # instrumentation
ADD SI, word ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
MUL word ptr [R14 + RCX] 
ADD SIL, -68 # instrumentation
JS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
SUB AX, 19396 
IMUL EDI, ECX, 113 
SBB SIL, -109 
AND RDI, 0b1111111111111 # instrumentation
MOVSX RSI, word ptr [R14 + RDI] 
MOVZX EAX, CL 
MOVZX EDX, AL 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RSI], DL 
IMUL EBX 
INC CX 
AND RCX, 0b1111111111111 # instrumentation
CMOVNB EAX, dword ptr [R14 + RCX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
