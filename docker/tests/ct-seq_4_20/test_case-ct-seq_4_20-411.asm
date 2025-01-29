.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
IMUL byte ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNL EDI, dword ptr [R14 + RSI] 
CMOVLE BX, DX 
AND RCX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RCX], 111 
AND RAX, 0b1111111111111 # instrumentation
ADD RDI, qword ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RDI], -56 
JMP .bb_main.1 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RDX], DL 
JNP .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RCX], BX 
AND RAX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RAX], AX 
AND RSI, 0b1111111111111 # instrumentation
LOCK DEC qword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
SBB SIL, byte ptr [R14 + RDI] 
SAHF  
AND RDI, 0b1111111111111 # instrumentation
NEG dword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
CMOVLE BX, word ptr [R14 + RDI] 
JMP .bb_main.3 
.bb_main.3:
OR BX, 0b1000000000000000 # instrumentation
BSF BX, BX 
ADD DIL, -56 # instrumentation
CMOVNP ESI, ESI 
AND RDX, 0b1111111111111 # instrumentation
CMOVNP RAX, qword ptr [R14 + RDX] 
ADC RCX, RCX 
AND RDX, 0b1111111111111 # instrumentation
MOV RDI, qword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RSI], -116 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
