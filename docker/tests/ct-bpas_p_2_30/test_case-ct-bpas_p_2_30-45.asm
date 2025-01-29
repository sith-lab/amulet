.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
AND RBX, 0b1111111111111 # instrumentation
NEG dword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVS DI, word ptr [R14 + RDX] 
SUB EBX, EDX 
CMOVBE RDI, RCX 
AND RSI, 0b1111111111111 # instrumentation
CMOVL EDI, dword ptr [R14 + RSI] 
CMP EAX, 710333101 
AND RDI, 0b1111111111111 # instrumentation
CMOVNL ECX, dword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
STOSW  
IMUL DL 
MUL ECX 
AND RDX, 0b1111111111111 # instrumentation
CMOVL SI, word ptr [R14 + RDX] 
CDQ  
CMOVNL AX, CX 
CMOVP AX, SI 
INC DL 
CMOVNS CX, DI 
LOOPNE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
SUB CL, AL 
AND RDX, 0b1111111111111 # instrumentation
ADC ESI, dword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RSI], ESI 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RDX], EBX 
AND RAX, 0b1111111111111 # instrumentation
CMOVNB EDX, dword ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
MOVSX EBX, word ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RBX], RSI 
AND RDX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RDX], RCX 
CMP EAX, -62690156 
AND RDI, 0b1111111111111 # instrumentation
CMOVP EBX, dword ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
CMOVB RCX, qword ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
MUL dword ptr [R14 + RSI] 
SUB SIL, 14 
ADC EAX, -5 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
