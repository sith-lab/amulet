.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
OR SIL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV SIL 
ADD DIL, -25 # instrumentation
CMOVS CX, SI 
CMOVNS CX, AX 
ADC RDI, 112 
MUL RBX 
ADD SIL, -40 # instrumentation
SETNZ CL 
NOT DX 
AND RDI, 0b1111111111111 # instrumentation
MUL dword ptr [R14 + RDI] 
ADD SIL, 71 # instrumentation
SETNO AL 
CMOVNLE EAX, EAX 
SETNLE BL 
MOV EAX, EBX 
AND RDX, 0b1111111111111 # instrumentation
OR EAX, dword ptr [R14 + RDX] 
JMP .bb_main.1 
.bb_main.1:
ADD SIL, 78 # instrumentation
SBB RSI, -55 
DEC DX 
CMPXCHG SI, DX 
CMOVNP ECX, EDX 
AND RDX, 0b1111111111111 # instrumentation
ADD ECX, dword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVS ECX, dword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
MOVSX RBX, byte ptr [R14 + RDX] 
CMOVNZ RDI, RDX 
AND RSI, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RSI], 117 
CMOVNB CX, DI 
NEG RSI 
ADD AX, -103 
AND RSI, 0b1111111111111 # instrumentation
CMOVNL RDI, qword ptr [R14 + RSI] 
CMP RAX, RCX 
AND RBX, 0b1111111111111 # instrumentation
XOR BX, word ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
SBB RDI, qword ptr [R14 + RCX] 
JNP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
XCHG EDX, EDX 
XOR DI, SI 
CLD  
AND RCX, 0b1111111111111 # instrumentation
IMUL AX, word ptr [R14 + RCX], 73 
TEST RSI, 461098099 
ADD SIL, CL 
AND RDI, 0b1111111111111 # instrumentation
IMUL word ptr [R14 + RDI] 
CMOVO EDX, EDI 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RSI], -63 
AND RDI, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RDI], 95 
TEST DIL, 4 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
