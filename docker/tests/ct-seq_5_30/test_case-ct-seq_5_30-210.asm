.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
CMP EAX, dword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVL EDI, dword ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK NEG word ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNB RAX, qword ptr [R14 + RBX] 
CMP DL, DL 
CMOVBE EDI, EBX 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RDI], 120 
CMOVNO RDI, RCX 
LOOPNE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
CMOVNL EDX, dword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RDI] 
CMP EDX, EDI 
AND RDI, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RDI], BX 
AND RDI, 0b1111111111111 # instrumentation
INC byte ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
CMOVL EAX, dword ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RBX], EBX 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RAX], -118 
AND RAX, 0b1111111111111 # instrumentation
CMOVBE RAX, qword ptr [R14 + RAX] 
JMP .bb_main.2 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
IMUL ESI, dword ptr [R14 + RSI], 119 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RCX], 31 
SBB DL, DL 
CMP RDX, RCX 
AND RDI, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RDI], AL 
AND RDX, 0b1111111111111 # instrumentation
INC dword ptr [R14 + RDX] 
JMP .bb_main.3 
.bb_main.3:
ADD SIL, 76 # instrumentation
CMOVB EDX, ESI 
CLD  
ADD RAX, 951551748 
AND RDX, 0b1111111111111 # instrumentation
LOCK DEC byte ptr [R14 + RDX] 
JL .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RSI, 0b1111111111111 # instrumentation
CMOVBE CX, word ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
IMUL EAX, dword ptr [R14 + RAX], 37 
IMUL DL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
