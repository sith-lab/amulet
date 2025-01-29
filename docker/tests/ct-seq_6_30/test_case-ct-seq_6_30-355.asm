.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
SUB RCX, 68 
XCHG ESI, ESI 
CLD  
ADC RSI, 46 
ADC AL, CL 
SUB CL, -37 
JL .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDI], SIL 
AND RAX, 0b1111111111111 # instrumentation
SUB CX, word ptr [R14 + RAX] 
ADD ECX, 116 
AND RBX, 0b1111111111111 # instrumentation
ADC DX, word ptr [R14 + RBX] 
JZ .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
ADC DIL, byte ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RDX], -38 
ADD BL, CL 
AND RAX, 0b1111111111111 # instrumentation
ADC DX, word ptr [R14 + RAX] 
NEG RBX 
JB .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
AND RCX, 0b1111111111111 # instrumentation
SBB ECX, dword ptr [R14 + RCX] 
INC BL 
MUL AX 
MOV BL, AL 
AND RBX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RBX], DL 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RDI], 115 
JMP .bb_main.4 
.bb_main.4:
ADD DIL, 17 # instrumentation
CMOVNL RBX, RDI 
AND RSI, 0b1111111111111 # instrumentation
CMOVNLE BX, word ptr [R14 + RSI] 
NEG SI 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RCX], -55 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RAX], AL 
JBE .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
MUL SI 
SUB DIL, 34 
IMUL DIL 
AND RBX, 0b1111111111111 # instrumentation
SUB DIL, byte ptr [R14 + RBX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
