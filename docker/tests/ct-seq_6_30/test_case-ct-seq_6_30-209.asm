.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
INC byte ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
MOVZX EDX, word ptr [R14 + RDX] 
IMUL DL 
ADC RCX, 120 
AND RSI, 0b1111111111111 # instrumentation
ADC EDX, dword ptr [R14 + RSI] 
JMP .bb_main.1 
.bb_main.1:
ADD SIL, -98 # instrumentation
SBB RAX, 1847596114 
CMP AL, -74 
ADC AL, DL 
CMOVNLE DX, AX 
MOVZX RSI, BL 
JBE .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
MOV BX, -16370 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RSI], AX 
AND RAX, 0b1111111111111 # instrumentation
MOV RSI, qword ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVP ECX, dword ptr [R14 + RBX] 
SUB EDX, 107 
ADC AX, CX 
SUB DIL, CL 
JNBE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
MOVZX BX, CL 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RDI], 79 
JMP .bb_main.4 
.bb_main.4:
ADD DIL, 70 # instrumentation
CMOVNZ AX, CX 
AND RAX, 0b1111111111111 # instrumentation
CMOVNP EDX, dword ptr [R14 + RAX] 
DEC RSI 
AND RBX, 0b1111111111111 # instrumentation
SBB ESI, dword ptr [R14 + RBX] 
JMP .bb_main.5 
.bb_main.5:
AND RDX, 0b1111111111111 # instrumentation
SBB CX, word ptr [R14 + RDX] 
MOVSX ESI, DL 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RAX], -89 
AND RAX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RAX], DL 
AND RDI, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RDI], DL 
XCHG BL, BL 
MUL BL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
