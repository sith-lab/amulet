.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
CMOVNP EAX, dword ptr [R14 + RCX] 
MUL AX 
IMUL EDX, ECX 
ADD DIL, 109 # instrumentation
XCHG DL, BL 
CMOVNL ECX, ECX 
SBB AL, 73 
MOV AL, DL 
JMP .bb_main.1 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RSI], ESI 
IMUL EAX, ECX, 66 
ADD SIL, 102 # instrumentation
JNBE .bb_main.2 
JMP .bb_main.5 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
SBB SI, word ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RDX], -8 
AND RSI, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RSI], -5 
MOVSX EDX, DL 
AND RDI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDI], 0b1000000000000000 # instrumentation
BSF BX, word ptr [R14 + RDI] 
INC EAX 
AND RDX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDX], EBX 
AND RSI, 0b1111111111111 # instrumentation
CMOVNLE ESI, dword ptr [R14 + RSI] 
SUB RAX, -282201985 
JMP .bb_main.3 
.bb_main.3:
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RCX], EDX 
ADC RBX, 127 
JB .bb_main.4 
JMP .bb_main.5 
.bb_main.4:
AND RCX, 0b1111111111111 # instrumentation
CMOVNLE RCX, qword ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
MOVSX BX, byte ptr [R14 + RSI] 
CMOVNO EDX, EBX 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RBX], -9 
SBB AL, -92 
SBB RCX, -105 
AND RAX, 0b1111111111111 # instrumentation
CMOVBE BX, word ptr [R14 + RAX] 
JMP .bb_main.5 
.bb_main.5:
DEC EAX 
AND RBX, 0b1111111111111 # instrumentation
CMOVNLE EAX, dword ptr [R14 + RBX] 
SBB EAX, -1831137892 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
