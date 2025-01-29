.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
LEA AX, qword ptr [RSI] 
INC ECX 
CMOVS RDX, RSI 
OR EBX, 0b1000000000000000000000000000000 # instrumentation
BSF EAX, EBX 
DEC BX 
AND RDX, 0b1111111111111 # instrumentation
IMUL DI, word ptr [R14 + RDX] 
INC EAX 
NEG EDI 
CMOVB RDX, RDI 
LOOPE .bb_main.1 
JMP .bb_main.5 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RSI], -1046521642 
AND RDI, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDI], BL 
LOOPNE .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RSI], AX 
AND RBX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RBX], -97 
DEC AL 
AND RCX, 0b1111111111111 # instrumentation
ADC RCX, qword ptr [R14 + RCX] 
ADD RAX, -1140144860 
JS .bb_main.3 
JMP .bb_main.5 
.bb_main.3:
MOVZX AX, SIL 
AND RDI, 0b1111111111111 # instrumentation
CMOVNB RCX, qword ptr [R14 + RDI] 
ADC AL, -22 
AND RSI, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RCX], RDI 
CMP DI, DX 
CMOVNL RDI, RCX 
JMP .bb_main.4 
.bb_main.4:
ADD BX, DX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNP DX, word ptr [R14 + RDX] 
MUL DL 
JO .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
ADD SIL, 93 # instrumentation
CMOVNS SI, BX 
OR SI, 0b1000000000000000 # instrumentation
BSF SI, SI 
AND RCX, 0b1111111111111 # instrumentation
SBB RDI, qword ptr [R14 + RCX] 
MOV DIL, 55 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
