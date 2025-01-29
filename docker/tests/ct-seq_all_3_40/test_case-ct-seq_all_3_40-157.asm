.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
XOR DIL, -68 
CMOVZ RSI, RBX 
MOVSX AX, BL 
ADD EAX, -39 
AND RCX, 0b1111111111111 # instrumentation
ADC BL, byte ptr [R14 + RCX] 
IMUL RDI 
AND RSI, 0b1111111111111 # instrumentation
OR RCX, qword ptr [R14 + RSI] 
ADC SI, 6 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RBX], 28 
AND RBX, 0b1111111111111 # instrumentation
MOVSX EDX, word ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
CMPSD  
CMOVNP EDI, EDI 
SETNS DL 
XADD RAX, RBX 
CMPXCHG BL, AL 
MOV RDI, 6043882766394785435 
ADC ESI, ESI 
AND RBX, 0b1111111111111 # instrumentation
LOCK XOR qword ptr [R14 + RBX], 56 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
CMOVNL RDX, qword ptr [R14 + RDX] 
SETO CL 
OR BL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV BL 
XADD AL, DL 
SUB ECX, -91 
CMOVP RSI, RCX 
LEA RBX, qword ptr [RAX] 
LOOPNE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RDI], RAX 
OR RAX, -40 
MOVZX RCX, CX 
OR ECX, ECX 
AND RBX, 0b1111111111111 # instrumentation
SBB EDX, dword ptr [R14 + RBX] 
XOR DI, -88 
SUB RDX, 64 
CMOVS RCX, RBX 
AND RDI, 0b1111111111111 # instrumentation
LOCK AND dword ptr [R14 + RDI], ECX 
MOVSX ESI, BL 
AND RSI, 0b1111111111111 # instrumentation
DEC word ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
AND EBX, dword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
XADD dword ptr [R14 + RBX], ECX 
TEST BX, 16121 
AND DIL, 83 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
