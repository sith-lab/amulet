.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RCX], CL 
AND RSI, 0b1111111111111 # instrumentation
ADC RBX, qword ptr [R14 + RSI] 
JNP .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
ADD DIL, -72 # instrumentation
CMOVBE EDI, EDX 
AND RSI, 0b1111111111111 # instrumentation
CMOVNL RDX, qword ptr [R14 + RSI] 
ADD EAX, -1148763271 
AND RAX, 0b1111111111111 # instrumentation
LOCK INC byte ptr [R14 + RAX] 
JMP .bb_main.2 
.bb_main.2:
ADD SIL, -11 # instrumentation
ADC ECX, ECX 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RSI], 91 
AND RDI, 0b1111111111111 # instrumentation
MUL dword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RBX], EAX 
XCHG RBX, RAX 
AND RSI, 0b1111111111111 # instrumentation
CMOVNLE BX, word ptr [R14 + RSI] 
ADC CL, 7 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RCX], -78 
JMP .bb_main.3 
.bb_main.3:
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RBX], 66 
AND RCX, 0b1111111111111 # instrumentation
CMP BX, word ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
CMP EBX, dword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RDX], SIL 
OR AX, 0b1000000000000000 # instrumentation
BSR CX, AX 
ADD SIL, 100 # instrumentation
LEA CX, qword ptr [RSI] 
CMOVNS ECX, ESI 
AND RSI, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RSI] 
JMP .bb_main.4 
.bb_main.4:
ADD DIL, 50 # instrumentation
CMOVB AX, AX 
AND RBX, 0b1111111111111 # instrumentation
CMOVNZ RCX, qword ptr [R14 + RBX] 
XCHG RDX, RDI 
SBB RAX, 2038454978 
AND RBX, 0b1111111111111 # instrumentation
IMUL word ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RAX], SIL 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RCX], -47 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RSI], CL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
