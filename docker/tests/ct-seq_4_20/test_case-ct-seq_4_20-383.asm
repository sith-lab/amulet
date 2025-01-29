.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
LOCK INC word ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RCX], ESI 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RDX], -20 
AND RDI, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RDI], ESI 
CMP RDX, RCX 
AND RDX, 0b1111111111111 # instrumentation
SUB DL, byte ptr [R14 + RDX] 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD DIL, 45 # instrumentation
CBW  
SBB RSI, RAX 
AND RDX, 0b1111111111111 # instrumentation
CMOVO RDI, qword ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RBX], -118 
AND RCX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RCX], AX 
AND RCX, 0b1111111111111 # instrumentation
CMOVNS ECX, dword ptr [R14 + RCX] 
JMP .bb_main.2 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
CMOVLE BX, word ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RSI], CL 
AND RDI, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RDI], EDX 
JMP .bb_main.3 
.bb_main.3:
AND RDI, 0b1111111111111 # instrumentation
MOVSX EAX, word ptr [R14 + RDI] 
CMOVNO AX, DX 
ADC AL, 101 
AND RAX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RAX], 108 
AND RCX, 0b1111111111111 # instrumentation
NEG dword ptr [R14 + RCX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
