.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
CMOVNL CX, word ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RDX], RSI 
AND RSI, 0b1111111111111 # instrumentation
CMP BL, byte ptr [R14 + RSI] 
CMOVL RDX, RCX 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RBX], -87 
JNL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD DIL, 88 # instrumentation
MOV RSI, 6356547739667507206 
CWDE  
ADC RAX, 645525460 
CMOVNL RAX, RCX 
AND RSI, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RSI] 
CMOVNLE DI, AX 
JBE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
ADD DL, BL 
JMP .bb_main.3 
.bb_main.3:
AND RAX, 0b1111111111111 # instrumentation
LOCK INC dword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK DEC dword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RDI], AX 
AND RSI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RSI], 0b1000000000000000000000000000000 # instrumentation
BSF RAX, qword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
IMUL word ptr [R14 + RAX] 
ADD SIL, -79 # instrumentation
CMOVP DX, BX 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RDX], DX 
CWD  
AND RBX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RBX], RCX 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RDX], 125 
MOVSX EDX, AX 
JNO .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RSI, 0b1111111111111 # instrumentation
CMOVNLE EDI, dword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
SBB EDX, dword ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
IMUL word ptr [R14 + RCX] 
SBB RAX, 56 
INC CL 
SBB SI, BX 
AND RCX, 0b1111111111111 # instrumentation
CMOVNLE CX, word ptr [R14 + RCX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
