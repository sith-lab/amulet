.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MOVSX BX, BL 
MUL RAX 
AND RDX, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RCX], 87 
AND RBX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RBX], AL 
AND RDI, 0b1111111111111 # instrumentation
SBB CX, word ptr [R14 + RDI] 
NEG CL 
CMOVB ECX, EDI 
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
IMUL dword ptr [R14 + RAX] 
SBB ESI, -109 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RBX], DL 
ADD SI, -54 
AND RSI, 0b1111111111111 # instrumentation
MUL qword ptr [R14 + RSI] 
INC CL 
JMP .bb_main.2 
.bb_main.2:
MUL BL 
CMOVNO RAX, RBX 
OR EBX, 0b1000000000000000000000000000000 # instrumentation
BSF ECX, EBX 
AND RBX, 0b1111111111111 # instrumentation
MOV DL, byte ptr [R14 + RBX] 
CLC  
ADC CX, DX 
JNS .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
AND RDI, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RAX], 50 
SBB ECX, 25 
JO .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
ADD BX, -30 
AND RCX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RCX], SIL 
CMOVNLE DI, AX 
AND RDI, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RDI], EDX 
AND RDX, 0b1111111111111 # instrumentation
CMOVB DI, word ptr [R14 + RDX] 
DEC BL 
ADC RAX, -55 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
