.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RSI], DL 
CMPXCHG SIL, AL 
AND RAX, 0b1111111111111 # instrumentation
NOT dword ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RDI], -8 
OR AX, 1 # instrumentation
AND DX, AX # instrumentation
SHR DX, 1 # instrumentation
DIV AX 
ADD SIL, -31 # instrumentation
CMOVBE BX, DI 
XCHG RDI, RAX 
MOVZX EBX, BL 
AND RAX, 0b1111111111111 # instrumentation
LOCK XOR word ptr [R14 + RAX], -82 
AND RDX, 0b1111111111111 # instrumentation
LOCK DEC word ptr [R14 + RDX] 
TEST AL, -64 
AND RDI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDI], DL 
CMP SIL, 95 
CMP RSI, -64 
XCHG AL, CL 
JMP .bb_main.1 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
CMOVNL RCX, qword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
MOVZX EBX, byte ptr [R14 + RDI] 
CMOVNL RAX, RCX 
AND RDI, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDI], DIL 
CMP BL, CL 
SBB CL, AL 
AND RSI, 0b1111111111111 # instrumentation
SETZ byte ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RSI], ECX 
CMOVNB DI, AX 
JP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RBX] 
OR DL, AL 
AND RBX, 0b1111111111111 # instrumentation
CMOVNS RDX, qword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RDI], 111 
AND RDI, 0b1111111111111 # instrumentation
LOCK AND qword ptr [R14 + RDI], 14 
MOV DL, DL 
SETS CL 
AND RAX, 0b1111111111111 # instrumentation
XOR DX, word ptr [R14 + RAX] 
CMOVLE EDI, ECX 
CMOVZ RAX, RSI 
SETNS BL 
ADD SIL, CL 
AND RBX, 0b1111111111111 # instrumentation
CMOVZ RDX, qword ptr [R14 + RBX] 
OR CL, BL 
AND RDX, 0b1111111111111 # instrumentation
LOCK NOT dword ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNO DX, word ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
