.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
CMPSW  
AND RCX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RCX], -112 
AND RBX, 0b1111111111111 # instrumentation
INC word ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
MOV EDX, dword ptr [R14 + RSI] 
ADC AX, 14685 
OR DI, 0b1000000000000000 # instrumentation
BSF AX, DI 
AND RDI, 0b1111111111111 # instrumentation
ADD CX, word ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
LOCK NEG byte ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNZ ESI, dword ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RCX], -6 
AND RAX, 0b1111111111111 # instrumentation
CMOVZ RCX, qword ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
ADD ESI, dword ptr [R14 + RCX] 
SUB RDX, 62 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
NEG BL 
CMOVNL EDX, ESI 
ADD EAX, -23 
AND RSI, 0b1111111111111 # instrumentation
CMOVBE ESI, dword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
INC dword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RSI], RSI 
SUB BL, BL 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RDX], AL 
AND RSI, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RSI], EAX 
AND RSI, 0b1111111111111 # instrumentation
CMOVBE RCX, qword ptr [R14 + RSI] 
CMOVNBE DX, SI 
OR ESI, 0b1000000000000000000000000000000 # instrumentation
BSF ESI, ESI 
AND RDI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDI], CL 
AND RSI, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RSI], RSI 
AND RAX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RAX], -5 
ADC DIL, -45 
CMOVNLE EDI, EBX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
