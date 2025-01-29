.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, -126 # instrumentation
SBB AL, -40 
AND RDI, 0b1111111111111 # instrumentation
CMOVNO RCX, qword ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
IMUL EDI, dword ptr [R14 + RAX], -118 
AND RDI, 0b1111111111111 # instrumentation
SUB BL, byte ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RCX] 
DEC BX 
JMP .bb_main.1 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
NEG dword ptr [R14 + RDI] 
MOV BL, CL 
AND RAX, 0b1111111111111 # instrumentation
ADD DI, word ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNL EDX, dword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
ADD RBX, qword ptr [R14 + RSI] 
CMOVZ RAX, RAX 
AND RDI, 0b1111111111111 # instrumentation
JMP .bb_main.2 
.bb_main.2:
ADD SIL, -47 # instrumentation
CMOVNL EBX, EDI 
AND RBX, 0b1111111111111 # instrumentation
CMOVNL BX, word ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RDI], DL 
AND RAX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RAX], ECX 
AND RSI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RSI], DIL 
AND RSI, 0b1111111111111 # instrumentation
MOV RDX, qword ptr [R14 + RSI] 
JNO .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
ADD DIL, 78 # instrumentation
ADC BL, BL 
INC DL 
AND RDI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDI], 23 
LOOP .bb_main.4 
JMP .bb_main.5 
.bb_main.4:
ADD SIL, -2 # instrumentation
CMOVO CX, SI 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RDX], 31 
JNL .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
AND RAX, 0b1111111111111 # instrumentation
LOCK NEG byte ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVS EAX, dword ptr [R14 + RDX] 
ADC AX, 1749 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RDI], EAX 
AND RBX, 0b1111111111111 # instrumentation
ADC DIL, byte ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVS RCX, qword ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
