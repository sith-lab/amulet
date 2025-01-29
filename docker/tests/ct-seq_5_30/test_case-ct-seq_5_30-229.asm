.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RDX], -112 
IMUL AX 
AND RAX, 0b1111111111111 # instrumentation
CMP DL, byte ptr [R14 + RAX] 
CMOVNO CX, SI 
CMOVNS BX, BX 
JB .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
CMOVS EBX, dword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RDI], ESI 
AND RDX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RDX], DI 
AND RSI, 0b1111111111111 # instrumentation
IMUL qword ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNL ECX, dword ptr [R14 + RSI] 
DEC DL 
CMP BL, BL 
JMP .bb_main.2 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RSI], DL 
NEG CL 
AND RSI, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RSI], -81 
AND RCX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RCX], SIL 
MOVSX RAX, AX 
CMP DL, CL 
CMOVNZ EBX, EDX 
JNS .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RBX, 0b1111111111111 # instrumentation
MOVSX AX, byte ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
ADC SIL, byte ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RAX], RDX 
AND RDI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDI], AX 
LEA DI, qword ptr [RDX + RBX] 
CMP BX, -121 
ADD RDI, RBX 
LOOP .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
MOV EBX, 860536665 
AND RBX, 0b1111111111111 # instrumentation
CMOVS ECX, dword ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
DEC word ptr [R14 + RSI] 
OR DIL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV DIL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
