.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, -47 # instrumentation
ADC RDX, 57 
AND RDI, 0b1111111111111 # instrumentation
CMOVNZ SI, word ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
CMOVB DI, word ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RSI], AX 
AND RBX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RBX], 108 
JMP .bb_main.1 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RAX], AX 
AND RDX, 0b1111111111111 # instrumentation
CMOVBE RSI, qword ptr [R14 + RDX] 
ADD DIL, -112 
AND RCX, 0b1111111111111 # instrumentation
IMUL RAX, qword ptr [R14 + RCX] 
ADD SIL, -51 # instrumentation
JNS .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RSI], ESI 
AND RAX, 0b1111111111111 # instrumentation
CMOVZ RAX, qword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVO BX, word ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
CMOVS ECX, dword ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNB BX, word ptr [R14 + RCX] 
JO .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
ADD DX, BX 
AND RCX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RCX], DL 
AND RDI, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RDI], DIL 
AND RAX, 0b1111111111111 # instrumentation
MOVSX EBX, byte ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
ADD EDI, dword ptr [R14 + RSI] 
SUB AX, 31660 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
