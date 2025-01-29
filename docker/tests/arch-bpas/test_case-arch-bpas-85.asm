.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, 59 # instrumentation
SETBE CL 
TEST RBX, RCX 
TEST EAX, -1984050489 
IMUL RDI, RDX 
AND RCX, 0b1111111111111 # instrumentation
CMOVNLE AX, word ptr [R14 + RCX] 
OR ECX, -113 
AND RCX, 0b1111111111111 # instrumentation
IMUL dword ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RBX], EAX 
JLE .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
CMP EAX, EBX 
AND RAX, 0b1111111111111 # instrumentation
TEST qword ptr [R14 + RAX], RBX 
SETNBE BL 
AND RSI, 0b1111111111111 # instrumentation
IMUL RAX, qword ptr [R14 + RSI], 109 
ADC RAX, RDX 
AND DL, -102 
MOVSX ECX, AL 
AND RDI, 0b1111111111111 # instrumentation
SUB BL, byte ptr [R14 + RDI] 
NOT ESI 
AND RAX, 0b1111111111111 # instrumentation
CMOVNL AX, word ptr [R14 + RAX] 
JMP .bb_main.2 
.bb_main.2:
IMUL DL 
XOR RDX, 85 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RBX], ECX 
TEST AL, DL 
SETNS SIL 
JL .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
ADD SIL, -102 # instrumentation
ADC EAX, ESI 
CMOVNZ SI, AX 
SETZ DL 
AND RCX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RCX], SI 
ADD SIL, -6 
AND RDX, 0b1111111111111 # instrumentation
AND ESI, dword ptr [R14 + RDX] 
TEST EDI, -1717139207 
IMUL RSI, RBX 
AND RBX, 0b1111111111111 # instrumentation
AND CL, byte ptr [R14 + RBX] 
CMP RSI, 23 
JB .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
ADD RSI, -73 
TEST RAX, 1322662958 
AND RSI, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RSI], -21 
IMUL DX, CX 
AND RAX, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RAX], DL 
AND RAX, 0b1111111111111 # instrumentation
IMUL qword ptr [R14 + RAX] 
NEG BL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
