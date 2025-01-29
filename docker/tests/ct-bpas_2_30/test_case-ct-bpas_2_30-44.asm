.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
MOV BL, byte ptr [R14 + RDX] 
CBW  
XCHG BL, CL 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RSI], RCX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNP RDI, qword ptr [R14 + RDI] 
MOVZX AX, SIL 
CMOVL DI, SI 
MOV SIL, BL 
AND RSI, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RSI], ESI 
AND RSI, 0b1111111111111 # instrumentation
CMOVNO RDI, qword ptr [R14 + RSI] 
MOVSX ESI, BX 
AND RBX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RBX], RCX 
MOV EBX, 767040877 
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
CMOVNBE ECX, dword ptr [R14 + RSI] 
ADC AL, -6 
ADD RAX, 440650694 
ADD RAX, 1617422894 
AND RDX, 0b1111111111111 # instrumentation
LOCK NEG word ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RCX], DL 
MUL DL 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RDI], 39 
ADD RDX, RDX 
AND RBX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RBX], RDX 
AND RDI, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RDI] 
SBB AL, -55 
CMP RBX, -84 
AND RAX, 0b1111111111111 # instrumentation
SUB BL, byte ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RAX], RAX 
DEC DL 
AND RDI, 0b1111111111111 # instrumentation
MOVZX EBX, byte ptr [R14 + RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
