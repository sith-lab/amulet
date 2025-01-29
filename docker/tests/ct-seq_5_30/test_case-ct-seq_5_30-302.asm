.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RBX], DL 
AND RBX, 0b1111111111111 # instrumentation
MOVSX RBX, byte ptr [R14 + RBX] 
ADC AX, -24999 
CMOVNBE AX, SI 
CMOVL RDI, RCX 
CMP AL, 119 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RSI], AX 
AND RDX, 0b1111111111111 # instrumentation
CMP ESI, dword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RSI], -96 
JNBE .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RBX] 
CWDE  
MOVZX EDI, DL 
AND RCX, 0b1111111111111 # instrumentation
SBB DIL, byte ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
IMUL word ptr [R14 + RDX] 
ADD SIL, -37 # instrumentation
LOOPNE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
CMOVNS EBX, dword ptr [R14 + RCX] 
SBB EBX, EAX 
AND RCX, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RCX], EAX 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RSI], -112 
AND RDI, 0b1111111111111 # instrumentation
CMOVO BX, word ptr [R14 + RDI] 
JMP .bb_main.3 
.bb_main.3:
AND RDI, 0b1111111111111 # instrumentation
CMOVBE BX, word ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RDX], EBX 
AND RBX, 0b1111111111111 # instrumentation
IMUL dword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RDI], SI 
JMP .bb_main.4 
.bb_main.4:
AND RSI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RSI], AX 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RSI], -125 
AND RDX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RDX], EDX 
ADC EDI, 91 
AND RDI, 0b1111111111111 # instrumentation
ADC CL, byte ptr [R14 + RDI] 
SBB ECX, -118 
AND RDI, 0b1111111111111 # instrumentation
CMOVNBE DI, word ptr [R14 + RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
