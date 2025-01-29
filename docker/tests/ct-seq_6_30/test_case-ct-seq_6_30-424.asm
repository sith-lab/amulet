.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
IMUL RDX 
ADD SIL, -71 # instrumentation
CMOVL EAX, ECX 
MOVSX RAX, DL 
CMOVBE RAX, RCX 
AND RSI, 0b1111111111111 # instrumentation
DEC dword ptr [R14 + RSI] 
JMP .bb_main.1 
.bb_main.1:
ADD RBX, -105 
IMUL RDI, RDI 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RCX], 65 
AND RCX, 0b1111111111111 # instrumentation
LOCK NEG word ptr [R14 + RCX] 
OR CX, 1 # instrumentation
AND DX, CX # instrumentation
SHR DX, 1 # instrumentation
DIV CX 
ADD SIL, 19 # instrumentation
ADC EAX, 1768567737 
JNL .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
SUB AL, 25 
AND RSI, 0b1111111111111 # instrumentation
DEC word ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RCX], -94 
SUB RAX, 120 
SUB AL, -123 
CMP AX, 23345 
JNO .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
INC DI 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RAX], 80 
AND RDI, 0b1111111111111 # instrumentation
CMOVNB EBX, dword ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
ADC ECX, dword ptr [R14 + RCX] 
OR BL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV BL 
AND RSI, 0b1111111111111 # instrumentation
LOCK NEG qword ptr [R14 + RSI] 
JNL .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RSI, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RSI], -79 
MOVSX RCX, DI 
JBE .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RDX], ECX 
AND RAX, 0b1111111111111 # instrumentation
CMOVP RCX, qword ptr [R14 + RAX] 
ADC EAX, EAX 
CMOVZ ECX, EAX 
AND RSI, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RSI], 94 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
