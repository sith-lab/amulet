.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
IMUL ECX, EDI 
AND RDI, 0b1111111111111 # instrumentation
CMOVNP EDI, dword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNO EBX, dword ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNB AX, word ptr [R14 + RSI] 
CMOVNS DI, SI 
AND RDX, 0b1111111111111 # instrumentation
CMP CL, byte ptr [R14 + RDX] 
JS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
SBB RDX, qword ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RCX], RCX 
AND RAX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RAX], EAX 
DEC DL 
AND RCX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RCX], DX 
AND RDI, 0b1111111111111 # instrumentation
CMP EDX, dword ptr [R14 + RDI] 
JMP .bb_main.2 
.bb_main.2:
ADD SIL, 5 # instrumentation
CMOVB RDI, RAX 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RCX], DX 
AND RDI, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RDI], DIL 
CLD  
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RCX], DX 
JMP .bb_main.3 
.bb_main.3:
MOVSX EDI, DL 
CMP RAX, -802134750 
AND RDX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RDX], 55 
AND RCX, 0b1111111111111 # instrumentation
CMOVNLE RDX, qword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RDX], -19 
JMP .bb_main.4 
.bb_main.4:
ADD SIL, 123 # instrumentation
CMOVB ESI, EAX 
AND RDI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDI], -95 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RCX], 77 
AND RCX, 0b1111111111111 # instrumentation
MOV DX, word ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
SBB BL, byte ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RDI], -32 
AND RSI, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RSI], 115 
MOV DI, BX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
