.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CWD  
AND RDX, 0b1111111111111 # instrumentation
CMOVL EBX, dword ptr [R14 + RDX] 
OR EDX, 0b1000000000000000000000000000000 # instrumentation
BSR EDI, EDX 
AND RDX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RDX], 71 
IMUL CX, BX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNP DX, word ptr [R14 + RDI] 
SUB BX, 41 
AND RSI, 0b1111111111111 # instrumentation
INC dword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNP EBX, dword ptr [R14 + RCX] 
JMP .bb_main.1 
.bb_main.1:
ADD SIL, 100 # instrumentation
CMOVNZ EBX, EAX 
ADC BX, 7 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RCX], 87 
MUL RDX 
MUL DL 
LEA EDX, qword ptr [RDX + RDX + 4069] 
MOVZX ECX, CX 
JMP .bb_main.2 
.bb_main.2:
ADD SIL, 0 # instrumentation
CMOVNL EAX, EDI 
AND RAX, 0b1111111111111 # instrumentation
LOCK INC qword ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
SBB CL, byte ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNS AX, word ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
SBB RAX, qword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
DEC dword ptr [R14 + RDI] 
CMP RAX, RBX 
JMP .bb_main.3 
.bb_main.3:
CMP AL, 74 
ADD RBX, -123 
AND RDI, 0b1111111111111 # instrumentation
ADC RBX, qword ptr [R14 + RDI] 
JLE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
ADD DIL, -92 # instrumentation
CMOVNLE CX, CX 
CMOVNO CX, DI 
AND RSI, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RSI], DIL 
AND RSI, 0b1111111111111 # instrumentation
ADD AL, byte ptr [R14 + RSI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
