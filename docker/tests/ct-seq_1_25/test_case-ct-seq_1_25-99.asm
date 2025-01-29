.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
LEA EDI, qword ptr [RCX + RAX + 39481] 
AND RDX, 0b1111111111111 # instrumentation
IMUL DI, word ptr [R14 + RDX], 71 
ADC DX, 3 
AND RSI, 0b1111111111111 # instrumentation
CMOVNBE RAX, qword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
LOCK NEG qword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RSI], -40 
CMOVLE RAX, RDI 
CMOVO DI, CX 
ADC RAX, RSI 
AND RDX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RDX], DL 
MOVSX EDI, CL 
AND RBX, 0b1111111111111 # instrumentation
CMOVNLE EDX, dword ptr [R14 + RBX] 
SUB BX, -88 
AND RDI, 0b1111111111111 # instrumentation
MOVSX EDX, word ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
SBB DX, word ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVO SI, word ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RDI], 106 
AND RCX, 0b1111111111111 # instrumentation
CMOVNS BX, word ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNP EDI, dword ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVO RDX, qword ptr [R14 + RBX] 
SBB CX, -83 
CMOVO RAX, RDI 
AND RCX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RCX], AL 
XCHG CX, AX 
CMP ECX, ECX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
