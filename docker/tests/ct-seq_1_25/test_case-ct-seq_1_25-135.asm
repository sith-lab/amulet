.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RBX], BL 
AND RAX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RAX], -148186471 
AND RBX, 0b1111111111111 # instrumentation
MOVSX EDI, byte ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNL EDX, dword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RDX], 43 
AND RDI, 0b1111111111111 # instrumentation
CMOVNLE RSI, qword ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RCX], 91 
AND RCX, 0b1111111111111 # instrumentation
CMP DL, byte ptr [R14 + RCX] 
SUB SIL, 63 
AND RAX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RAX], AX 
SBB BL, 55 
AND RSI, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RSI], 6 
AND RCX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
SUB BL, byte ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RSI], 80 
AND RDI, 0b1111111111111 # instrumentation
ADD EBX, dword ptr [R14 + RDI] 
CMC  
AND RBX, 0b1111111111111 # instrumentation
LOCK DEC byte ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDX], AX 
MOVSX DI, CL 
NEG BL 
CMOVNS DI, DI 
CMOVNZ RDI, RAX 
CMP EAX, EAX 
CMOVNO RDI, RSI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
