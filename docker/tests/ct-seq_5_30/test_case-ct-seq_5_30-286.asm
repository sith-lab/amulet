.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
SUB SI, DI 
AND RAX, 0b1111111111111 # instrumentation
MOV EBX, dword ptr [R14 + RAX] 
SUB RAX, 203888826 
ADC DX, 20 
AND RBX, 0b1111111111111 # instrumentation
MOVSX DX, byte ptr [R14 + RBX] 
JNLE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
LOCK NEG word ptr [R14 + RDI] 
XCHG AX, SI 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RBX], 101 
ADD RDI, 89 
SUB AX, CX 
AND RBX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RBX], RDX 
JS .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RDI], DL 
XCHG ESI, ESI 
SUB AL, DL 
AND RBX, 0b1111111111111 # instrumentation
LOCK DEC byte ptr [R14 + RBX] 
JMP .bb_main.3 
.bb_main.3:
AND RDX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RDX], AX 
CMOVNZ AX, AX 
OR CL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV CL 
ADD DIL, DL 
CMOVNL CX, DX 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RCX], SI 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RAX], CL 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RDX], DI 
ADC ESI, -100 
MOVSX AX, DL 
CMOVNL SI, DX 
AND RSI, 0b1111111111111 # instrumentation
IMUL RDX, qword ptr [R14 + RSI], -48 
JMP .bb_main.4 
.bb_main.4:
AND RCX, 0b1111111111111 # instrumentation
DEC word ptr [R14 + RCX] 
MOVZX RDI, SI 
AND RAX, 0b1111111111111 # instrumentation
INC word ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
