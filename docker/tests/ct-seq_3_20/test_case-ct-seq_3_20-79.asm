.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MOV DL, -75 
IMUL BX, DI 
AND RCX, 0b1111111111111 # instrumentation
CMOVL RSI, qword ptr [R14 + RCX] 
ADC EDX, 38 
AND RCX, 0b1111111111111 # instrumentation
LOCK INC byte ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RAX], -74 
CMOVNZ EDI, EDI 
AND RCX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RCX], -119 
JMP .bb_main.1 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
IMUL dword ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
IMUL DI, word ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
SBB AL, byte ptr [R14 + RDI] 
CMOVNBE ESI, EDX 
AND RBX, 0b1111111111111 # instrumentation
ADC DL, byte ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RBX], -39 
CMP RBX, -53 
OR EAX, 1 # instrumentation
AND EDX, EAX # instrumentation
SHR EDX, 1 # instrumentation
DIV EAX 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RAX], -26 
JNL .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
ADD BL, byte ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RBX], BX 
AND RSI, 0b1111111111111 # instrumentation
MOV DI, word ptr [R14 + RSI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
