.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, 57 # instrumentation
SBB CL, BL 
AND RBX, 0b1111111111111 # instrumentation
CMOVNB RBX, qword ptr [R14 + RBX] 
SBB SIL, 6 
AND RSI, 0b1111111111111 # instrumentation
CMP BL, byte ptr [R14 + RSI] 
SBB EAX, 76511497 
XCHG ESI, EAX 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RDI], -11 
JNP .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
LOCK NEG dword ptr [R14 + RBX] 
SBB RAX, 1027812963 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RAX], -101 
AND RAX, 0b1111111111111 # instrumentation
CMOVZ EDI, dword ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVBE ECX, dword ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
CMOVP SI, word ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RAX], 90 
CMOVP RAX, RDI 
JMP .bb_main.2 
.bb_main.2:
ADD AX, BX 
XCHG EDX, EDI 
IMUL EDI, EDI 
AND RDX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RDX], ESI 
AND RCX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RCX], 55 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RBX], 21 
JMP .bb_main.3 
.bb_main.3:
IMUL RDX, RCX, -118 
AND RCX, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RCX] 
ADD AX, 21326 
AND RDX, 0b1111111111111 # instrumentation
LOCK INC byte ptr [R14 + RDX] 
CDQ  
JNS .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
MOV RDX, 7608835011112245475 
MOV DL, -42 
AND RDI, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RDI], -17 
ADD BL, 118 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
