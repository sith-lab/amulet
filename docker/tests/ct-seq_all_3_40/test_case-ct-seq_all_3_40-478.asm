.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
XCHG BL, BL 
XOR DI, -36 
CMPXCHG EBX, EDI 
AND ESI, ESI 
IMUL RSI, RDX 
CMP DIL, -106 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
SCASW  
DEC AX 
CDQ  
AND RSI, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RSI], CL 
AND EAX, -2101840730 
ADD AL, -26 
JLE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
DEC DL 
AND RCX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RCX] 
TEST CL, CL 
CMP DX, 45 
XCHG RSI, RAX 
AND RDI, 0b1111111111111 # instrumentation
CMP CL, byte ptr [R14 + RDI] 
NOT AL 
AND RBX, 0b1111111111111 # instrumentation
LOCK INC qword ptr [R14 + RBX] 
SETZ DL 
AND RSI, 0b1111111111111 # instrumentation
CMOVNP ESI, dword ptr [R14 + RSI] 
XCHG RCX, RAX 
JMP .bb_main.2 
.bb_main.2:
CLD  # instrumentation
ADD SIL, 41 # instrumentation
BSWAP EBX 
SETNO DL 
CMPXCHG RDI, RCX 
AND RDX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RDX], -27 
TEST EAX, EAX 
LEA BX, qword ptr [RSI + RBX + 13626] 
XOR EBX, -26 
SETNLE SIL 
AND RAX, 0b1111111111111 # instrumentation
CMOVNS DX, word ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNB RSI, qword ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
SCASW  
MUL CL 
XOR EDX, ECX 
CMOVZ EBX, ECX 
ADC DI, AX 
AND RBX, 0b1111111111111 # instrumentation
AND DI, word ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVL RBX, qword ptr [R14 + RSI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
