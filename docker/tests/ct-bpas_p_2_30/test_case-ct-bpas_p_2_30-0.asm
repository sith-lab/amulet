.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
SUB RSI, 55 
MOV EBX, 358818420 
OR RBX, 0b1000000000000000000000000000000 # instrumentation
BSR RSI, RBX 
AND RSI, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RSI], -40 
CMOVB EBX, EDX 
IMUL DI, DI 
ADC EAX, 1023435871 
AND RCX, 0b1111111111111 # instrumentation
MOV DX, word ptr [R14 + RCX] 
ADD AL, 43 
AND RCX, 0b1111111111111 # instrumentation
CMOVNS DX, word ptr [R14 + RCX] 
INC AL 
BSWAP EBX 
CMOVP RCX, RDX 
AND RBX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RBX], -99 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
CLD  # instrumentation
ADD SIL, 94 # instrumentation
CMOVLE ESI, ESI 
AND RBX, 0b1111111111111 # instrumentation
LOCK NEG qword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RAX], 30 
INC AX 
AND RBX, 0b1111111111111 # instrumentation
CMOVZ EDX, dword ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNL DX, word ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
SBB BL, byte ptr [R14 + RBX] 
SBB AX, 65 
AND RBX, 0b1111111111111 # instrumentation
LOCK INC qword ptr [R14 + RBX] 
CMOVL ECX, EDI 
CMOVNP EDX, EDI 
AND RDX, 0b1111111111111 # instrumentation
CMOVP ESI, dword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RDX] 
MOVZX EDX, AX 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
STOSW  
MUL EDX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
