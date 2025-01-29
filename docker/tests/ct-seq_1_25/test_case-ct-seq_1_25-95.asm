.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, -16 # instrumentation
CMOVL SI, DI 
AND RCX, 0b1111111111111 # instrumentation
CMOVNP RSI, qword ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
SUB ECX, dword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
SBB RAX, qword ptr [R14 + RDI] 
CMP AL, 89 
AND RBX, 0b1111111111111 # instrumentation
CMOVNBE EDI, dword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
ADC ECX, dword ptr [R14 + RAX] 
CMC  
CMOVP DI, DI 
AND RAX, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
CMP EBX, dword ptr [R14 + RAX] 
CMP RBX, RCX 
CMOVNL RBX, RDI 
AND RCX, 0b1111111111111 # instrumentation
CMOVNO EDX, dword ptr [R14 + RCX] 
IMUL EAX, EBX 
AND RDX, 0b1111111111111 # instrumentation
ADC RBX, qword ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RDI], -62 
AND RCX, 0b1111111111111 # instrumentation
MOVSX RCX, byte ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
SUB DL, byte ptr [R14 + RBX] 
SUB RBX, RBX 
AND RCX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RCX], RBX 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RBX], DI 
AND RAX, 0b1111111111111 # instrumentation
SUB RSI, qword ptr [R14 + RAX] 
CMOVLE DX, AX 
AND RDX, 0b1111111111111 # instrumentation
MOVZX RBX, word ptr [R14 + RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
