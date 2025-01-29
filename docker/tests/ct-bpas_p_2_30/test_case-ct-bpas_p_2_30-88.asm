.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, -98 # instrumentation
CMOVNO RSI, RDX 
ADC DIL, 32 
AND RDI, 0b1111111111111 # instrumentation
CMP EDX, dword ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
CMOVL EBX, dword ptr [R14 + RCX] 
CMOVBE ESI, EBX 
SUB AX, 23422 
AND RAX, 0b1111111111111 # instrumentation
NEG qword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDX], BL 
SBB CL, -28 
AND RSI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RSI], -63 
AND RAX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RAX], -8 
SBB AL, AL 
IMUL EAX 
AND RDX, 0b1111111111111 # instrumentation
IMUL DI, word ptr [R14 + RDX], 105 
ADD SIL, 4 # instrumentation
MOV RDI, 62920780976566441 
JL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
CLD  # instrumentation
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
CMPSD  
AND RAX, 0b1111111111111 # instrumentation
CMOVBE DX, word ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVBE RSI, qword ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RBX], 121 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RBX], RCX 
ADD BL, BL 
CMOVNBE BX, AX 
AND RCX, 0b1111111111111 # instrumentation
SBB AL, byte ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
SUB RAX, qword ptr [R14 + RAX] 
MOVZX DX, BL 
AND RCX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RCX], -54 
SBB RAX, -79451591 
AND RAX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RAX], -11 
AND RDI, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RDI], RCX 
CMOVP RSI, RBX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
