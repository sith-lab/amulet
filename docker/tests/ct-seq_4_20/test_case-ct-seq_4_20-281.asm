.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RCX], 14 
CMOVLE DX, AX 
JL .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
ADD SIL, -61 # instrumentation
CMOVS DX, CX 
AND RSI, 0b1111111111111 # instrumentation
DEC word ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
ADC SIL, byte ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
MOVSX BX, byte ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RSI], -20 
AND RDI, 0b1111111111111 # instrumentation
CMOVS EDI, dword ptr [R14 + RDI] 
JNS .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
INC CL 
CMOVNS RBX, RSI 
AND RSI, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RSI], 23 
ADC AX, -18795 
JMP .bb_main.3 
.bb_main.3:
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RCX], 0 
CMOVNZ BX, SI 
ADD DIL, -44 
AND RDI, 0b1111111111111 # instrumentation
CMOVNO RAX, qword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
MOV SIL, byte ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
IMUL word ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RSI], 23 
XCHG ESI, EAX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
