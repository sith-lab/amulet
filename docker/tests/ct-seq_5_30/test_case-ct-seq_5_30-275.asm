.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
DEC CL 
CMOVNL EDI, ESI 
AND RDX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RDX], EDX 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RAX], -99 
AND RDX, 0b1111111111111 # instrumentation
CMOVNLE EAX, dword ptr [R14 + RDX] 
CMOVNB EBX, ECX 
AND RBX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RBX], -67 
AND RSI, 0b1111111111111 # instrumentation
CMP RAX, qword ptr [R14 + RSI] 
JNS .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
ADD DIL, 49 # instrumentation
CMOVP EAX, ESI 
AND RSI, 0b1111111111111 # instrumentation
LOCK INC word ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
SBB EBX, dword ptr [R14 + RSI] 
CWD  
CMOVO RBX, RDI 
NEG EBX 
AND RDI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSF ESI, dword ptr [R14 + RDI] 
ADD DIL, -10 # instrumentation
JNL .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
IMUL DX, DI 
AND RDI, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RDI], 52 
AND RDX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDX], 0b1000000000000000000000000000000 # instrumentation
BSF RCX, qword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RSI], -6 
AND RAX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RAX], EAX 
MOVSX EBX, DI 
LOOPE .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
OR RAX, 0b1000000000000000000000000000000 # instrumentation
BSR RSI, RAX 
MUL ESI 
AND RSI, 0b1111111111111 # instrumentation
ADD EAX, dword ptr [R14 + RSI] 
CMOVNS DI, DX 
AND RDI, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RDI], 111 
CMOVNZ RDI, RDI 
JMP .bb_main.4 
.bb_main.4:
AND RCX, 0b1111111111111 # instrumentation
IMUL EDX, dword ptr [R14 + RCX] 
MOV DL, CL 
SBB RAX, RAX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
