.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
SUB RDX, qword ptr [R14 + RDI] 
MOV DL, 92 
AND RSI, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RDX], ESI 
JMP .bb_main.1 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RSI], RCX 
AND RSI, 0b1111111111111 # instrumentation
MOVSX RAX, byte ptr [R14 + RSI] 
CMOVNZ CX, AX 
AND RSI, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RSI], 73 
AND RSI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RSI], AL 
CMP AX, -28960 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RBX], 59 
AND RSI, 0b1111111111111 # instrumentation
CMOVNB RSI, qword ptr [R14 + RSI] 
JMP .bb_main.2 
.bb_main.2:
ADD DIL, -25 # instrumentation
LEA RDI, qword ptr [RDI + RCX + 14524] 
ADC EAX, -1529549874 
AND RSI, 0b1111111111111 # instrumentation
CMOVNP RAX, qword ptr [R14 + RSI] 
JBE .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
AND RAX, 0b1111111111111 # instrumentation
IMUL AX, word ptr [R14 + RAX] 
NEG AL 
MOV RCX, 1289813789826033286 
MOVZX EDX, BL 
ADC AL, -45 
ADC AX, -7940 
CMOVNL ECX, ECX 
AND RDI, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RDI] 
JNS .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RCX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RCX], 20390 
LEA RBX, qword ptr [RAX + RAX] 
MOV AL, -54 
CMP SI, SI 
ADC AX, DI 
AND RBX, 0b1111111111111 # instrumentation
IMUL EAX, dword ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RCX], -1 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
