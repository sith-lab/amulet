.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RCX], AL 
CMOVO RBX, RCX 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RCX], 97 
AND RBX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RBX], -866336624 
CMP AX, DI 
JBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSF RSI, qword ptr [R14 + RDI] 
STD  
AND RSI, 0b1111111111111 # instrumentation
CMOVNBE RSI, qword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
CMOVB DI, word ptr [R14 + RCX] 
JMP .bb_main.2 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
IMUL dword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RDX], -16 
AND RDX, 0b1111111111111 # instrumentation
CMOVNL RSI, qword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDX], CL 
AND RDI, 0b1111111111111 # instrumentation
ADD BX, word ptr [R14 + RDI] 
CMOVP RDI, RDI 
JP .bb_main.3 
JMP .bb_main.5 
.bb_main.3:
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RDI], 119 
AND RDI, 0b1111111111111 # instrumentation
CMOVS RDX, qword ptr [R14 + RDI] 
ADC AX, 16361 
CMOVNLE AX, BX 
AND RCX, 0b1111111111111 # instrumentation
CMP DL, byte ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVS ESI, dword ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
MOVSX CX, byte ptr [R14 + RBX] 
JNS .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RBX, 0b1111111111111 # instrumentation
ADD SI, word ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVLE RAX, qword ptr [R14 + RAX] 
MOV ECX, 1521467744 
JNB .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
AND RBX, 0b1111111111111 # instrumentation
ADD DIL, byte ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNO CX, word ptr [R14 + RSI] 
CMOVBE CX, SI 
AND RSI, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RSI], RSI 
AND RBX, 0b1111111111111 # instrumentation
NEG dword ptr [R14 + RBX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
