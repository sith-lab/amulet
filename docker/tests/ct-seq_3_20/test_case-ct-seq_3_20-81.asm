.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
NEG dword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
SBB RDX, qword ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
CMOVP EAX, dword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RAX], 58 
OR EDI, 0b1000000000000000000000000000000 # instrumentation
BSR EAX, EDI 
DEC AL 
AND RDI, 0b1111111111111 # instrumentation
CMOVS EDX, dword ptr [R14 + RDI] 
CBW  
CMOVO BX, SI 
JMP .bb_main.1 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
CMOVO RCX, RCX 
AND RDI, 0b1111111111111 # instrumentation
IMUL byte ptr [R14 + RDI] 
JO .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
CMOVZ EBX, dword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK NEG byte ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
SBB AL, byte ptr [R14 + RCX] 
CMOVNO AX, SI 
AND RSI, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RSI], 79 
AND RCX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RCX], 83 
AND RBX, 0b1111111111111 # instrumentation
CMP SIL, byte ptr [R14 + RBX] 
MOV BX, -18832 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
