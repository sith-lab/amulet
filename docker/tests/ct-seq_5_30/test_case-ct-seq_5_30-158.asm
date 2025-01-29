.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
IMUL SIL 
AND RSI, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RSI], 80 
AND RDX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDX], 1 # instrumentation
ADC DI, 20 
AND RDI, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RDI], EBX 
AND RBX, 0b1111111111111 # instrumentation
ADD DIL, byte ptr [R14 + RBX] 
SBB CL, SIL 
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
CMOVP ESI, dword ptr [R14 + RSI] 
CMOVNO RBX, RSI 
AND RDX, 0b1111111111111 # instrumentation
LOCK NEG qword ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDI], CL 
AND RSI, 0b1111111111111 # instrumentation
IMUL RSI, qword ptr [R14 + RSI] 
OR EAX, 0b1000000000000000000000000000000 # instrumentation
BSF ECX, EAX 
CMP EDX, ECX 
JMP .bb_main.2 
.bb_main.2:
ADD DIL, -21 # instrumentation
CMOVL EBX, ESI 
AND RSI, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RDI], -123 
JMP .bb_main.3 
.bb_main.3:
AND RBX, 0b1111111111111 # instrumentation
SBB ESI, dword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RDI], -89 
ADC AL, -71 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RSI], EBX 
AND RSI, 0b1111111111111 # instrumentation
CMOVBE AX, word ptr [R14 + RSI] 
SUB EAX, 1230099060 
INC RBX 
JMP .bb_main.4 
.bb_main.4:
ADD SIL, 126 # instrumentation
CMOVS CX, AX 
LEA EDX, qword ptr [RDI + RSI] 
CMOVLE CX, DI 
CMOVNP RDX, RDI 
AND RDX, 0b1111111111111 # instrumentation
MOV BX, word ptr [R14 + RDX] 
OR EDX, 0b1000000000000000000000000000000 # instrumentation
BSF EBX, EDX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
