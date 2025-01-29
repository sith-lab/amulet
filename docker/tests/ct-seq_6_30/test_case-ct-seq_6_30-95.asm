.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RAX], RCX 
CWD  
ADC AL, 30 
JS .bb_main.1 
JMP .bb_main.5 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RSI], EBX 
JNP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
CMOVB EDI, dword ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
DEC qword ptr [R14 + RCX] 
CMOVLE EDI, ECX 
AND RDI, 0b1111111111111 # instrumentation
CMP BX, word ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RSI], AX 
AND RBX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RBX], DX 
IMUL CX, AX, 115 
JMP .bb_main.3 
.bb_main.3:
AND RCX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RCX], -128 
CMOVS ECX, ESI 
AND RSI, 0b1111111111111 # instrumentation
CMP BL, byte ptr [R14 + RSI] 
OR EBX, 0b1000000000000000000000000000000 # instrumentation
BSR EAX, EBX 
LOOP .bb_main.4 
JMP .bb_main.5 
.bb_main.4:
IMUL DI, DX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNP RSI, qword ptr [R14 + RDI] 
XCHG DL, DL 
CMOVNS RAX, RBX 
SUB ECX, EDI 
SBB AX, -19600 
CMOVNLE RAX, RDX 
JMP .bb_main.5 
.bb_main.5:
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RBX], CX 
CMOVBE ECX, EAX 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RDI], AX 
ADD CX, DX 
CMOVS BX, AX 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RBX], 1 
ADD BL, CL 
AND RCX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RCX], DL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
