.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
CMOVNO RAX, qword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
ADC BL, byte ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RDI], CL 
AND RDX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RDX], ESI 
AND RDI, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RDI] 
MOVSX ESI, DI 
JMP .bb_main.1 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
SUB DI, word ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
ADD CL, byte ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RDI], 27 
MOVZX EDX, CL 
JNS .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
XCHG RDI, RAX 
AND RBX, 0b1111111111111 # instrumentation
IMUL RBX, qword ptr [R14 + RBX], 1 
AND RBX, 0b1111111111111 # instrumentation
LOCK NEG word ptr [R14 + RBX] 
INC RBX 
OR ESI, 1 # instrumentation
AND EDX, ESI # instrumentation
SHR EDX, 1 # instrumentation
DIV ESI 
JMP .bb_main.3 
.bb_main.3:
AND RBX, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RBX], EDX 
AND RSI, 0b1111111111111 # instrumentation
CMOVNL RDI, qword ptr [R14 + RSI] 
OR DI, 0b1000000000000000 # instrumentation
BSR AX, DI 
AND RDI, 0b1111111111111 # instrumentation
CMOVNLE DX, word ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RSI], DX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
