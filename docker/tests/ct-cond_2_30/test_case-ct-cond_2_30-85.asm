.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
INC BL 
AND RCX, 0b1111111111111 # instrumentation
MOVSX RDI, byte ptr [R14 + RCX] 
MOVSX DI, BL 
AND RDX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RDX], BL 
CMOVLE EBX, ESI 
CMOVZ RCX, RSI 
AND RBX, 0b1111111111111 # instrumentation
SBB EAX, dword ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RSI], -55 
CMOVLE DI, DI 
MOV BX, AX 
AND RAX, 0b1111111111111 # instrumentation
CMOVNL AX, word ptr [R14 + RAX] 
ADC SI, BX 
CMOVNB ESI, EDI 
AND RAX, 0b1111111111111 # instrumentation
MUL dword ptr [R14 + RAX] 
ADD DIL, -10 # instrumentation
JNS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
INC word ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNP DX, word ptr [R14 + RBX] 
NEG SI 
ADC SI, DX 
AND RDX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RDX], BX 
AND RDI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDI], 0b1000000000000000 # instrumentation
BSR CX, word ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
MOVZX ESI, word ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RCX], CL 
OR SIL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV SIL 
AND RDX, 0b1111111111111 # instrumentation
LOCK INC byte ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RAX], 121 
AND RDI, 0b1111111111111 # instrumentation
CMOVNBE RAX, qword ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RAX], 0b1000000000000000 # instrumentation
BSR AX, word ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
MUL dword ptr [R14 + RDX] 
CMOVNB RCX, RBX 
MOVZX ESI, BL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
