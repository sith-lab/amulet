.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, 80 # instrumentation
CBW  
MOV BL, DIL 
ADC AL, 98 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RAX], DL 
AND RBX, 0b1111111111111 # instrumentation
SUB ECX, dword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVS BX, word ptr [R14 + RAX] 
JMP .bb_main.1 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RAX], -58 
AND RAX, 0b1111111111111 # instrumentation
SBB ESI, dword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RDX], DL 
MOVSX ESI, DIL 
MOV BX, 3559 
JNS .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
ADD DIL, -78 # instrumentation
SBB RDX, RDI 
ADC EAX, EDI 
AND RCX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RCX], -69 
CMOVNO RCX, RBX 
AND RSI, 0b1111111111111 # instrumentation
MOVSX RSI, word ptr [R14 + RSI] 
SAHF  
JMP .bb_main.3 
.bb_main.3:
AND RSI, 0b1111111111111 # instrumentation
ADD ECX, dword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
LOCK INC word ptr [R14 + RDI] 
ADD RSI, -112 
INC DL 
JRCXZ .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
MOVZX RDX, BL 
AND RBX, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RBX] 
SUB AL, DL 
NEG SI 
AND RBX, 0b1111111111111 # instrumentation
IMUL byte ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RAX], 2 
CMOVNZ EBX, ECX 
AND RDI, 0b1111111111111 # instrumentation
IMUL DI, word ptr [R14 + RDI], -47 
AND RDX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RDX], -101 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
