.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, -110 # instrumentation
CMOVNO EBX, ECX 
MOVZX EDI, CL 
CMOVNBE ESI, EAX 
ADC SI, DI 
JNS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RDI], 95 
SETNO AL 
AND SI, -30 
SETNBE DL 
AND RSI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RSI], 106 
AND RDX, 0b1111111111111 # instrumentation
CMP BL, byte ptr [R14 + RDX] 
TEST ECX, 1789268824 
JMP .bb_main.2 
.bb_main.2:
TEST RAX, -735010406 
INC EBX 
TEST AL, -102 
CMP EAX, 2059977433 
CMOVNS RDI, RDI 
XOR RAX, -2139443736 
OR RAX, -308004118 
AND RDI, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RDI], CX 
JMP .bb_main.3 
.bb_main.3:
CLD  # instrumentation
CMP BX, CX 
AND ECX, -69 
XOR AX, 26493 
XOR CL, -117 
CMP SI, DX 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
MOVSD  
AND RDX, 0b1111111111111 # instrumentation
CMOVZ CX, word ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
MOVSX EDI, word ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK DEC dword ptr [R14 + RDI] 
CMPXCHG DL, CL 
JRCXZ .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
ADD DIL, 27 # instrumentation
SETNL BL 
ADD DL, AL 
TEST RAX, 2108678575 
CMOVP EDX, ESI 
MOVSX RDX, AL 
JS .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
DEC AL 
AND RCX, 0b1111111111111 # instrumentation
LOCK DEC byte ptr [R14 + RCX] 
CMP RDX, RDX 
CDQ  
CMOVO SI, AX 
INC ECX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
