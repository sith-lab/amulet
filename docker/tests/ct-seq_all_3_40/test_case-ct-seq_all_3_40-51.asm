.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
ADD EAX, dword ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
LOCK AND byte ptr [R14 + RCX], DL 
AND RCX, 0b1111111111111 # instrumentation
IMUL CX, word ptr [R14 + RCX] 
SBB SIL, DL 
CMOVLE RCX, RSI 
AND RDI, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
SUB BX, word ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
NOT word ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDX], DL 
AND RDX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RDX], -73 
XCHG EAX, EDX 
SETL BL 
JP .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
DEC DL 
NOT DX 
AND RDI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDI], ESI 
AND RDI, 0b1111111111111 # instrumentation
SETZ byte ptr [R14 + RDI] 
NEG ESI 
CMOVS ECX, ESI 
AND RCX, 0b1111111111111 # instrumentation
LOCK INC word ptr [R14 + RCX] 
ADD AX, -15474 
NEG RDI 
XADD BX, CX 
AND RAX, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RAX], -665957109 
CMOVNS RDI, RAX 
AND RDX, 0b1111111111111 # instrumentation
AND dword ptr [R14 + RDX], EDX 
JS .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
XCHG RDI, RAX 
STC  
ADD RCX, 117 
OR RAX, 59753015 
CMOVNL AX, DX 
AND RBX, 0b1111111111111 # instrumentation
XADD dword ptr [R14 + RBX], ECX 
AND RDI, 0b1111111111111 # instrumentation
CMOVS RDI, qword ptr [R14 + RDI] 
SETNL DL 
AND RSI, 0b1111111111111 # instrumentation
LOCK CMPXCHG qword ptr [R14 + RSI], RDI 
AND RDI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDI], EAX 
CMOVNL SI, CX 
AND RCX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RCX], 36 
AND RAX, 0b1111111111111 # instrumentation
CMP ECX, dword ptr [R14 + RAX] 
XOR EAX, 45 
SETNB CL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
