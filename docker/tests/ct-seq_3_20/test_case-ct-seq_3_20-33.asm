.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
OR EBX, 1 # instrumentation
AND EDX, EBX # instrumentation
SHR EDX, 1 # instrumentation
DIV EBX 
AND RSI, 0b1111111111111 # instrumentation
CMOVNL SI, word ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RCX], 42 
AND RCX, 0b1111111111111 # instrumentation
IMUL ESI, dword ptr [R14 + RCX], 63 
SBB EAX, -1160412590 
CMOVNP RAX, RDX 
AND RDI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDI], 0b1000000000000000 # instrumentation
BSF DX, word ptr [R14 + RDI] 
CMP ECX, ECX 
AND RDI, 0b1111111111111 # instrumentation
CMP ECX, dword ptr [R14 + RDI] 
JLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
CMOVNL EBX, dword ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVO ECX, dword ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RAX], EDX 
AND RDI, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDI], 76 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RCX], SIL 
AND RDX, 0b1111111111111 # instrumentation
CMOVO CX, word ptr [R14 + RDX] 
JMP .bb_main.2 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
CMOVO AX, word ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
IMUL EAX, dword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
LOCK DEC byte ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
SBB AX, word ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
CMOVBE RDX, qword ptr [R14 + RBX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
