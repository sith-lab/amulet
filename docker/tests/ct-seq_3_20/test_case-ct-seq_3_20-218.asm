.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
MOV DIL, byte ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVLE BX, word ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
SUB AL, byte ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RSI], EBX 
MOV EBX, -1651051518 
AND RDX, 0b1111111111111 # instrumentation
CMOVNZ RBX, qword ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNO BX, word ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RDI], RDX 
LOOPNE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
CMP EAX, -1887549004 
AND RDI, 0b1111111111111 # instrumentation
LOCK NEG dword ptr [R14 + RDI] 
SUB DI, -53 
AND RCX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RCX], RDX 
JBE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
CMOVLE ECX, dword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RDI], RCX 
AND RDX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDX], 19791 
AND RAX, 0b1111111111111 # instrumentation
MOVSX RAX, word ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RBX], 18 
AND RDI, 0b1111111111111 # instrumentation
LOCK INC qword ptr [R14 + RDI] 
NEG BX 
AND RSI, 0b1111111111111 # instrumentation
ADC DX, word ptr [R14 + RSI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
