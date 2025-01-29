.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RAX], 0b1000000000000000 # instrumentation
BSF BX, word ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RBX], AX 
CMOVZ RCX, RBX 
MUL ECX 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RSI], CX 
JNLE .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
XCHG EDI, EAX 
AND RSI, 0b1111111111111 # instrumentation
CMOVP RCX, qword ptr [R14 + RSI] 
CMP CL, 14 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RDI], CL 
JMP .bb_main.2 
.bb_main.2:
ADD SIL, 13 # instrumentation
CMOVP CX, DI 
AND RBX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RBX], 44 
AND RCX, 0b1111111111111 # instrumentation
CMOVNS RDI, qword ptr [R14 + RCX] 
STC  
AND RDX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RDX], 75 
CMOVNS RCX, RDI 
JMP .bb_main.3 
.bb_main.3:
MOV DIL, -45 
AND RSI, 0b1111111111111 # instrumentation
ADC EDI, dword ptr [R14 + RSI] 
MOV AL, -73 
XCHG CL, DL 
IMUL ECX, EDX 
AND RSI, 0b1111111111111 # instrumentation
INC byte ptr [R14 + RSI] 
ADC CL, CL 
AND RCX, 0b1111111111111 # instrumentation
CMOVB DX, word ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RDX], 117 
JNLE .bb_main.4 
JMP .bb_main.5 
.bb_main.4:
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RSI], -106 
ADC EAX, -108 
AND RCX, 0b1111111111111 # instrumentation
SBB ESI, dword ptr [R14 + RCX] 
JNP .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RAX], DL 
XCHG BL, CL 
MOV RBX, RSI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
