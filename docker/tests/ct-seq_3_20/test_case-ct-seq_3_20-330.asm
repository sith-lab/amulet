.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD AX, 17 
XCHG EDI, EAX 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RDI], CL 
AND RSI, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RSI], -50 
AND RDI, 0b1111111111111 # instrumentation
CMP BL, byte ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
LOCK NEG byte ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RDI], BL 
JBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD SIL, 42 # instrumentation
ADC RAX, RSI 
AND RDI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDI], AL 
AND RSI, 0b1111111111111 # instrumentation
CMOVLE RSI, qword ptr [R14 + RSI] 
CMP AL, 55 
AND RDI, 0b1111111111111 # instrumentation
CMOVLE RCX, qword ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RDX], -90 
AND RBX, 0b1111111111111 # instrumentation
CMOVB RDI, qword ptr [R14 + RBX] 
JNO .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
IMUL EDI, EBX 
AND RDX, 0b1111111111111 # instrumentation
CMOVLE EAX, dword ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
DEC dword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNL DX, word ptr [R14 + RDI] 
ADC CX, AX 
AND RCX, 0b1111111111111 # instrumentation
CMOVO BX, word ptr [R14 + RCX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
