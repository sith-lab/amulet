.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNBE SI, word ptr [R14 + RCX] 
CMOVL ECX, EDI 
AND RAX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RAX], 0b1000000000000000000000000000000 # instrumentation
BSR EDI, dword ptr [R14 + RAX] 
SUB AX, -22031 
JMP .bb_main.1 
.bb_main.1:
ADD DIL, 76 # instrumentation
SBB RAX, 1893860335 
AND RCX, 0b1111111111111 # instrumentation
CMOVP EDX, dword ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVS DX, word ptr [R14 + RSI] 
CMOVO BX, CX 
XCHG RBX, RAX 
CWDE  
JMP .bb_main.2 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RDI], DL 
CMOVS RAX, RSI 
NEG EAX 
JNS .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RDX, 0b1111111111111 # instrumentation
IMUL CX, word ptr [R14 + RDX], -26 
AND RCX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RCX], ESI 
AND RSI, 0b1111111111111 # instrumentation
CMP RDX, qword ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RSI], EDX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNLE AX, word ptr [R14 + RDX] 
CMOVNS EBX, EBX 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RDX], AX 
SBB DI, BX 
JLE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RCX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RCX], 0b1000000000000000000000000000000 # instrumentation
BSR RCX, qword ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
MOVSX EDI, word ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RBX], 0b1000000000000000 # instrumentation
BSR BX, word ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RCX], BL 
AND RCX, 0b1111111111111 # instrumentation
CMOVLE AX, word ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVP RAX, qword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RAX], -111 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
