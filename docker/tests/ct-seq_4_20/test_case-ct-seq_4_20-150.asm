.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
IMUL RSI 
MOVZX RAX, AX 
CMOVO EAX, EDX 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RBX], BL 
JP .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
CMOVNB ESI, dword ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RBX], EDI 
CMP SIL, -87 
ADD CL, DL 
AND RAX, 0b1111111111111 # instrumentation
CMOVNBE CX, word ptr [R14 + RAX] 
JMP .bb_main.2 
.bb_main.2:
ADD DIL, 53 # instrumentation
CMOVNL RDX, RBX 
AND RDX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RDX], 6 
IMUL EDI, ESI 
AND RDI, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
CMOVL RSI, qword ptr [R14 + RAX] 
SUB RAX, -1052042690 
AND RCX, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RCX], EBX 
JMP .bb_main.3 
.bb_main.3:
AND RBX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RBX], 0b1000000000000000000000000000000 # instrumentation
BSR RDX, qword ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVZ DX, word ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RDX], RCX 
AND RDI, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RDI], DI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
