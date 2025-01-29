.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
SUB RSI, 72 
AND RBX, 0b1111111111111 # instrumentation
INC byte ptr [R14 + RBX] 
ADD RSI, RDI 
AND RDI, 0b1111111111111 # instrumentation
SUB CL, byte ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RAX], -88 
DEC SI 
CMOVP RSI, RAX 
JNB .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
SBB EDI, dword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RDI], -9 
AND RSI, 0b1111111111111 # instrumentation
LOCK DEC dword ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RSI], -90 
SUB BL, -115 
AND RCX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RCX], BX 
JMP .bb_main.2 
.bb_main.2:
OR EAX, 0b1000000000000000000000000000000 # instrumentation
BSR ESI, EAX 
INC CL 
MOV AL, AL 
AND RSI, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RSI], EDI 
AND RAX, 0b1111111111111 # instrumentation
CMOVS ECX, dword ptr [R14 + RAX] 
SBB RDI, 17 
AND RDX, 0b1111111111111 # instrumentation
SUB RBX, qword ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
ADD RBX, qword ptr [R14 + RCX] 
DEC DI 
AND RCX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RCX], -90 
CMOVNS EBX, EDI 
JS .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
ADD RAX, 951085736 
CMC  
INC RSI 
AND RDI, 0b1111111111111 # instrumentation
ADC RCX, qword ptr [R14 + RDI] 
SUB BX, DX 
AND RSI, 0b1111111111111 # instrumentation
IMUL RDI, qword ptr [R14 + RSI], -120 
JMP .bb_main.4 
.bb_main.4:
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
