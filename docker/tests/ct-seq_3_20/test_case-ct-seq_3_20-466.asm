.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MOV EAX, EDI 
AND RSI, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RSI], RDI 
XCHG BX, DI 
NEG BL 
AND RDI, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RDI], EDI 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RAX], 20 
SBB DIL, -114 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RBX], ECX 
NEG DL 
JNS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
XCHG DX, AX 
AND RBX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RBX], CL 
AND RCX, 0b1111111111111 # instrumentation
MOVSX SI, byte ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDI], 853869774 
JNP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
IMUL EDX, ESI 
AND RBX, 0b1111111111111 # instrumentation
CMOVO RCX, qword ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RCX], DX 
AND RBX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RBX], 0b1000000000000000 # instrumentation
BSF BX, word ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RAX], AX 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RCX], -117 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RSI], RBX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
