.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
MOVSX RBX, byte ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK INC qword ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RSI], EAX 
AND RCX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RCX], 0b1000000000000000000000000000000 # instrumentation
BSF EDI, dword ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RCX], 0b1000000000000000 # instrumentation
BSF BX, word ptr [R14 + RCX] 
SUB RDX, RAX 
AND RAX, 0b1111111111111 # instrumentation
INC dword ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
MOVSX SI, byte ptr [R14 + RDI] 
ADD SIL, -26 
CMOVNL EBX, EDI 
MOV EAX, 1375711702 
AND RCX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RCX], -3 
LEA RSI, qword ptr [RDX + RDX] 
AND RDI, 0b1111111111111 # instrumentation
CMP CX, word ptr [R14 + RDI] 
JBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
SUB AX, 3104 
AND RDX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDX], 845980000 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RAX], ESI 
ADD DI, DX 
CMOVZ RCX, RDX 
XCHG RAX, RAX 
CMOVBE RDX, RCX 
AND RDX, 0b1111111111111 # instrumentation
CMOVS EAX, dword ptr [R14 + RDX] 
OR CX, 0b1000000000000000 # instrumentation
BSF BX, CX 
AND RAX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RAX], 5 
SUB EAX, -115 
CMOVO EAX, EBX 
OR RSI, 0b1000000000000000000000000000000 # instrumentation
BSF RCX, RSI 
AND RCX, 0b1111111111111 # instrumentation
ADC AL, byte ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK INC byte ptr [R14 + RSI] 
INC ESI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
