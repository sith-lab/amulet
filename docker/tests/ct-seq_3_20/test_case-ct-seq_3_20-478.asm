.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RCX], 83 
AND RDI, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RSI], 74 
IMUL DX, AX, -23 
AND RDI, 0b1111111111111 # instrumentation
CMOVNO RCX, qword ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RAX], -11 
LOOPNE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RAX], DL 
CMP EAX, -1731461780 
AND RSI, 0b1111111111111 # instrumentation
CMOVLE ECX, dword ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RSI], 47 
AND RSI, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RSI], BL 
DEC CX 
JBE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
ADD SIL, 121 # instrumentation
CMOVO RAX, RBX 
AND RBX, 0b1111111111111 # instrumentation
MOV BL, byte ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RSI], -8936 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RCX], -79 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RDX], -57 
CMOVNB BX, SI 
AND RAX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RAX], 27 
CLD  
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
