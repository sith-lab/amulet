.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
OR ECX, -104 
AND RAX, 0b1111111111111 # instrumentation
MOVSX BX, byte ptr [R14 + RAX] 
SETL AL 
AND RCX, 0b1111111111111 # instrumentation
SUB EBX, dword ptr [R14 + RCX] 
CMOVNO AX, DI 
JB .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
ADD SI, DI 
AND RSI, 0b1111111111111 # instrumentation
AND dword ptr [R14 + RSI], -68 
SUB AL, -85 
AND RDI, 0b1111111111111 # instrumentation
TEST qword ptr [R14 + RDI], 334478982 
JMP .bb_main.2 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
MOVZX RAX, byte ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
LOCK AND word ptr [R14 + RSI], BX 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RDI], -59 
OR AL, -68 
OR RAX, 0b1000000000000000000000000000000 # instrumentation
BSR RAX, RAX 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RCX], AL 
TEST RDX, -355296178 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RDX], -8 
LOOPNE .bb_main.3 
JMP .bb_main.5 
.bb_main.3:
ADD SIL, -88 # instrumentation
SBB AL, 113 
INC EBX 
AND EDX, ECX 
AND RCX, 0b1111111111111 # instrumentation
CMOVZ RCX, qword ptr [R14 + RCX] 
CMOVNBE RBX, RSI 
AND RSI, 0b1111111111111 # instrumentation
LOCK XADD byte ptr [R14 + RSI], DL 
NOT AL 
SETNBE BL 
AND RDX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDX], EAX 
XADD EDI, EBX 
JMP .bb_main.4 
.bb_main.4:
AND RAX, 0b1111111111111 # instrumentation
SETL byte ptr [R14 + RAX] 
DEC EDX 
SBB RDX, RAX 
CMPXCHG SI, DX 
TEST SI, BX 
AND RBX, 0b1111111111111 # instrumentation
CMOVNP RBX, qword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RDI], BL 
JZ .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
AND RDX, 0b1111111111111 # instrumentation
CMOVL DX, word ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RDX], -101 
SETP BL 
MOVZX RDI, SIL 
AND RDI, 0b1111111111111 # instrumentation
MOV SI, word ptr [R14 + RDI] 
MOV RDX, RBX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
