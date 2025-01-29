.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RAX], DX 
OR BL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV BL 
AND RSI, 0b1111111111111 # instrumentation
IMUL ESI, dword ptr [R14 + RSI], -99 
AND RAX, 0b1111111111111 # instrumentation
CMOVNP EAX, dword ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
MOVSX EAX, byte ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RBX], -73 
AND RDI, 0b1111111111111 # instrumentation
DEC dword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
INC word ptr [R14 + RDI] 
LOOPNE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
DEC qword ptr [R14 + RDI] 
CMOVB EAX, ECX 
AND RBX, 0b1111111111111 # instrumentation
IMUL RAX, qword ptr [R14 + RBX], -91 
AND RCX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RCX], RDX 
CMOVNO RDX, RDI 
AND RAX, 0b1111111111111 # instrumentation
LOCK INC byte ptr [R14 + RAX] 
JMP .bb_main.2 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RSI], DI 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RDX], -33 
CMOVNZ ECX, EDX 
AND RCX, 0b1111111111111 # instrumentation
MOVZX CX, byte ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNL RDI, qword ptr [R14 + RSI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
