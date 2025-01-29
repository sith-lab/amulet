.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RBX], RAX 
AND RDI, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RDI], BX 
AND RAX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RAX], EAX 
AND RBX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RBX], 99 
XCHG EAX, EBX 
AND RDX, 0b1111111111111 # instrumentation
ADC DI, word ptr [R14 + RDX] 
ADC DX, 51 
JMP .bb_main.1 
.bb_main.1:
ADD DIL, 44 # instrumentation
SBB SIL, -48 
AND RSI, 0b1111111111111 # instrumentation
SUB ESI, dword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RAX] 
CBW  
MOV ECX, 64941919 
JMP .bb_main.2 
.bb_main.2:
MOVSX DX, AL 
AND RBX, 0b1111111111111 # instrumentation
IMUL BX, word ptr [R14 + RBX], -78 
ADD SIL, 86 # instrumentation
JNS .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RSI, 0b1111111111111 # instrumentation
CMOVLE ESI, dword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNL DI, word ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNLE RAX, qword ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNB RDI, qword ptr [R14 + RSI] 
ADD EDI, 28 
AND RDI, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RDI], SI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
