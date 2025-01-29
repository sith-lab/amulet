.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RDI], RDI 
CMOVNL RDX, RCX 
AND RBX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RBX], DL 
XOR EDI, 64 
AND RSI, 0b1111111111111 # instrumentation
XOR qword ptr [R14 + RSI], RDX 
XCHG RAX, RSI 
AND RAX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RAX], -70 
AND RSI, 0b1111111111111 # instrumentation
CMP DL, byte ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
OR AX, word ptr [R14 + RDX] 
MOVZX ECX, CL 
AND RBX, RAX 
SUB SI, CX 
SETNO SIL 
AND RDI, 0b1111111111111 # instrumentation
SUB EAX, dword ptr [R14 + RDI] 
MOVZX EBX, BL 
AND RDI, 0b1111111111111 # instrumentation
CMOVNO RDI, qword ptr [R14 + RDI] 
SBB CX, AX 
JS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RCX], EBX 
SUB SI, AX 
SUB DL, -62 
AND RAX, 0b1111111111111 # instrumentation
MOV DL, byte ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
SETNP byte ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
CMOVP ECX, dword ptr [R14 + RAX] 
AND BX, -45 
AND RDI, 0b1111111111111 # instrumentation
TEST word ptr [R14 + RDI], -25128 
CBW  
CMOVL RSI, RDX 
CMC  
CMOVNZ AX, BX 
JS .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
CMP DX, 30 
AND RCX, 0b1111111111111 # instrumentation
LOCK DEC word ptr [R14 + RCX] 
CMPXCHG AX, AX 
AND RDX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RDX], 109 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RDI], RDI 
SUB ESI, -16 
ADD RSI, RBX 
SETS SIL 
AND RDX, 0b1111111111111 # instrumentation
SETNL byte ptr [R14 + RDX] 
CLC  
AND RAX, 0b1111111111111 # instrumentation
AND dword ptr [R14 + RAX], EAX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
