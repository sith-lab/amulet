.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, 94 # instrumentation
CMOVLE ESI, ECX 
CMOVNP DX, SI 
AND RSI, 0b1111111111111 # instrumentation
CMOVB ESI, dword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RDX], 1 # instrumentation
AND RCX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RCX], RDX 
MOVZX AX, DL 
AND RDI, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RDI], SI 
JNL .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
XADD ECX, EDX 
XCHG RBX, RSI 
AND RDX, 0b1111111111111 # instrumentation
LOCK DEC qword ptr [R14 + RDX] 
MOV DX, AX 
AND RDI, 0b1111111111111 # instrumentation
XOR CL, byte ptr [R14 + RDI] 
LEA ECX, qword ptr [RDX] 
ADC AL, -28 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, qword ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RDX], 101 
XOR AX, -22445 
AND RAX, 1005140056 
IMUL RDI, RSI, -72 
MOVSX DX, CL 
XADD RBX, RBX 
JMP .bb_main.2 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RDI] 
OR AL, 92 
AND RCX, 0b1111111111111 # instrumentation
CMOVNB RSI, qword ptr [R14 + RCX] 
SUB EAX, 1291130226 
CMP DL, SIL 
AND RDX, 0b1111111111111 # instrumentation
CMOVO EAX, dword ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
SBB EBX, dword ptr [R14 + RCX] 
XCHG RDX, RAX 
AND RBX, 0b1111111111111 # instrumentation
CMOVLE RSI, qword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
SETO byte ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
SETZ byte ptr [R14 + RCX] 
CMOVNB ECX, EAX 
AND RBX, RCX 
CMOVB BX, BX 
NOT BL 
NEG DL 
XCHG RBX, RDI 
CMOVS BX, DI 
SBB SIL, 112 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
