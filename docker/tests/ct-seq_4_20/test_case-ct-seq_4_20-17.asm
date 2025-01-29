.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
CMOVNL SI, word ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDI], DL 
AND RDX, 0b1111111111111 # instrumentation
ADC CL, byte ptr [R14 + RDX] 
JMP .bb_main.1 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDI], -1161416326 
ADD DIL, 60 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RBX], BL 
AND RSI, 0b1111111111111 # instrumentation
NEG dword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RCX], SIL 
JNP .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RDI], 123 
AND RSI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RSI], 1033807768 
AND RCX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RCX], ESI 
AND RSI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RSI], 0b1000000000000000000000000000000 # instrumentation
BSF EDI, dword ptr [R14 + RSI] 
ADD DIL, -14 # instrumentation
CMOVS RBX, RDI 
AND RAX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RAX], AX 
LOOPNE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RCX, 0b1111111111111 # instrumentation
CMOVB EDX, dword ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RBX], BL 
AND RCX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RCX], DI 
IMUL ECX, ESI, 92 
AND RCX, 0b1111111111111 # instrumentation
CMOVO DX, word ptr [R14 + RCX] 
CMP RAX, 127 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
