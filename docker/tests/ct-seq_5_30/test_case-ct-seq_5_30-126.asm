.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
MOV CL, byte ptr [R14 + RSI] 
DEC DIL 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RDX], BX 
AND RAX, 0b1111111111111 # instrumentation
ADC AL, byte ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RAX], -94 
AND RSI, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RSI] 
MOVSX EDI, BL 
JS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
SUB EDX, EDI 
AND RBX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RBX], SI 
ADC BL, BL 
AND RCX, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RCX] 
CMOVP EAX, EBX 
CMP AL, 56 
JNS .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
ADD DIL, 36 # instrumentation
ADC EDX, 18 
MOVZX AX, AL 
AND RDX, 0b1111111111111 # instrumentation
CMOVO BX, word ptr [R14 + RDX] 
CMP AL, -75 
AND RDX, 0b1111111111111 # instrumentation
SUB AL, byte ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RSI], EBX 
JNP .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RDX, 0b1111111111111 # instrumentation
CMOVNZ DX, word ptr [R14 + RDX] 
IMUL BX, BX 
MOVSX RDI, SIL 
IMUL EAX, EDI, -113 
JMP .bb_main.4 
.bb_main.4:
IMUL DL 
ADD DIL, 47 # instrumentation
LAHF  
AND RSI, 0b1111111111111 # instrumentation
CMOVNBE RCX, qword ptr [R14 + RSI] 
MUL EDI 
AND RCX, 0b1111111111111 # instrumentation
CMP CL, byte ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RCX], 3 
ADD BL, BL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
