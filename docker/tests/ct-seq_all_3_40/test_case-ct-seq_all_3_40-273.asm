.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
SUB CX, DX 
AND RBX, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RBX], 32 
AND RBX, 0b1111111111111 # instrumentation
XOR qword ptr [R14 + RBX], -18 
AND RAX, 0b1111111111111 # instrumentation
LOCK XADD dword ptr [R14 + RAX], EAX 
AND RDX, 0b1111111111111 # instrumentation
LOCK INC qword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDX], 109 
AND RBX, 0b1111111111111 # instrumentation
XOR dword ptr [R14 + RBX], EAX 
MOVSX RBX, DI 
MUL RCX 
AND RCX, 0b1111111111111 # instrumentation
SETLE byte ptr [R14 + RCX] 
CMOVS EDX, EDI 
SETNZ AL 
INC RDX 
CMOVB BX, DX 
JMP .bb_main.1 
.bb_main.1:
CLD  # instrumentation
AND RCX, 0b1111111111111 # instrumentation
CMOVNP DX, word ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
SUB AX, word ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
AND ESI, dword ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RSI], -69 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
MOVSW  
AND RCX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RCX], 41 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RAX], BX 
NOT DX 
JLE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
CMOVNP SI, word ptr [R14 + RAX] 
SETNB BL 
XOR BL, CL 
AND RAX, 0b1111111111111 # instrumentation
MOVSX RDX, word ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
DEC qword ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
INC dword ptr [R14 + RAX] 
CMOVNP EDI, EAX 
ADC AL, -74 
AND RBX, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RAX], BL 
AND RBX, 0b1111111111111 # instrumentation
ADC DL, byte ptr [R14 + RBX] 
ADC RDX, -31 
CLC  
SETNO CL 
AND RAX, 0b1111111111111 # instrumentation
CMOVBE ESI, dword ptr [R14 + RAX] 
SBB RAX, -80 
OR AX, -3042 
XCHG RBX, RDI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
