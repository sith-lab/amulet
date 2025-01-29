.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
IMUL DX, DX 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RCX], CL 
CMP AL, 51 
CMC  
AND RDI, 0b1111111111111 # instrumentation
CMOVNZ EDI, dword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNP CX, word ptr [R14 + RDI] 
MOV AL, 43 
MOVZX DX, BL 
JNLE .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
CMOVL SI, word ptr [R14 + RAX] 
DEC AX 
CBW  
AND RCX, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RCX], ECX 
AND RDI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDI], RAX 
JS .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
XCHG EDI, EAX 
AND RAX, 0b1111111111111 # instrumentation
CMOVS BX, word ptr [R14 + RAX] 
JZ .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
ADD DIL, 123 # instrumentation
ADC AL, 69 
AND RSI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RSI], EAX 
JLE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RBX, 0b1111111111111 # instrumentation
IMUL byte ptr [R14 + RBX] 
IMUL RSI 
AND RDI, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNLE RDI, qword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
INC byte ptr [R14 + RDX] 
JO .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
AND RDI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSR RBX, qword ptr [R14 + RDI] 
ADD SIL, -125 # instrumentation
ADC SIL, -61 
AND RBX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RBX], EAX 
LEA SI, qword ptr [RDI + RBX] 
DEC BL 
AND RDX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RDX], -78 
CMOVNO AX, CX 
AND RAX, 0b1111111111111 # instrumentation
ADD DIL, byte ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
