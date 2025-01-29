.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
CMOVL RDI, qword ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNO RSI, qword ptr [R14 + RBX] 
MUL RBX 
MUL SIL 
DEC RDX 
JB .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
MOVZX RSI, DX 
INC CL 
CMP AL, 107 
JL .bb_main.2 
JMP .bb_main.5 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDI], -2004685272 
MOV CL, BL 
AND RCX, 0b1111111111111 # instrumentation
CMOVNLE EDI, dword ptr [R14 + RCX] 
CMOVO CX, CX 
CMOVL EDX, ECX 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RDI], RSI 
AND RAX, 0b1111111111111 # instrumentation
ADC AL, byte ptr [R14 + RAX] 
JMP .bb_main.3 
.bb_main.3:
AND RDI, 0b1111111111111 # instrumentation
CMP RBX, qword ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RSI], 0b1000000000000000 # instrumentation
BSF DI, word ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
CMOVB EBX, dword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RDX], DL 
MOV BX, 16940 
JS .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
INC ESI 
IMUL RDX 
ADD DL, CL 
NEG CL 
AND RDI, 0b1111111111111 # instrumentation
MUL qword ptr [R14 + RDI] 
ADD SIL, 52 # instrumentation
JNLE .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RDX], ECX 
DEC EAX 
DEC ESI 
CLC  
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
