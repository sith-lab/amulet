.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
ADD DIL, -62 # instrumentation
CMOVS RDX, RSI 
AND RDX, 0b1111111111111 # instrumentation
CMOVNO DI, word ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RSI], AX 
AND RCX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RCX] 
CMOVNS RDX, RBX 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
SCASD  
AND RSI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RSI], 0b1000000000000000000000000000000 # instrumentation
BSF EAX, dword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RCX], 0b1000000000000000000000000000000 # instrumentation
BSF ECX, dword ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
MUL word ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
IMUL dword ptr [R14 + RAX] 
NEG AX 
AND RDI, 0b1111111111111 # instrumentation
LOCK DEC byte ptr [R14 + RDI] 
NEG ECX 
OR EDX, 1 # instrumentation
JNS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD SIL, -125 # instrumentation
ADC AX, BX 
AND RCX, 0b1111111111111 # instrumentation
CMOVNZ CX, word ptr [R14 + RCX] 
ADC RAX, -706057129 
ADC RAX, RDI 
CMOVZ EAX, EDI 
IMUL ESI, EBX 
AND RDX, 0b1111111111111 # instrumentation
MOVZX EAX, word ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDX], -29 
AND RDX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDX], BL 
CMOVLE DX, BX 
AND RAX, 0b1111111111111 # instrumentation
CMOVNB ECX, dword ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
IMUL RSI, qword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSR RAX, qword ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
LOCK DEC dword ptr [R14 + RDX] 
LAHF  
AND RCX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RCX], ECX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
