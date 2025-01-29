.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RAX], -53 
ADC AX, -6977 
AND RDX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDX], -13920 
ADC EAX, -1484613583 
CMOVNS BX, DI 
ADD DIL, 111 
ADD DIL, 67 
SBB AL, BL 
SUB EAX, -3942302 
AND RCX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RCX], DL 
MOVZX EAX, SI 
MOV BL, 95 
MOV DL, DL 
NEG AL 
ADC EAX, -1468971808 
AND RCX, 0b1111111111111 # instrumentation
LOCK NEG word ptr [R14 + RCX] 
LOOPE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
CMOVL ESI, dword ptr [R14 + RAX] 
MOVSX CX, DL 
CMOVNO RAX, RBX 
AND RDX, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RDX] 
ADD SIL, -66 # instrumentation
CMOVNS EDI, EBX 
AND RSI, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RSI], RAX 
AND RCX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RCX], BX 
AND RAX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RAX], -1282324453 
SUB RAX, -1561401485 
AND RAX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RAX], AX 
IMUL SI, SI 
AND RDI, 0b1111111111111 # instrumentation
MOVZX RDI, word ptr [R14 + RDI] 
XCHG DI, AX 
AND RCX, 0b1111111111111 # instrumentation
CMOVO SI, word ptr [R14 + RCX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
