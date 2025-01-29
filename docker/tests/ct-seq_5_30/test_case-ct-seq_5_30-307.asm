.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CMP EAX, -719510012 
CMOVNL EDI, EBX 
CMOVLE EBX, ECX 
AND RDX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDX], 0b1000000000000000000000000000000 # instrumentation
BSR RDX, qword ptr [R14 + RDX] 
JMP .bb_main.1 
.bb_main.1:
OR AX, 0b1000000000000000 # instrumentation
BSF DX, AX 
AND RAX, 0b1111111111111 # instrumentation
CMOVZ SI, word ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RCX], AX 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RAX], -82 
AND RAX, 0b1111111111111 # instrumentation
MOVZX SI, byte ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RBX], 76 
CMP AL, -7 
NEG DI 
CMOVNL RDI, RDX 
JMP .bb_main.2 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RCX], RAX 
AND RSI, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RSI], DI 
MOVZX ECX, SI 
AND RDI, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RDI], 106 
SUB RAX, 30 
JMP .bb_main.3 
.bb_main.3:
AND RAX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RAX], 1 # instrumentation
CMOVB RSI, RDI 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RDX], RCX 
AND RDI, 0b1111111111111 # instrumentation
SUB CX, word ptr [R14 + RDI] 
ADD AX, 31340 
AND RSI, 0b1111111111111 # instrumentation
CMOVL EDI, dword ptr [R14 + RSI] 
MOVSX ECX, DI 
JRCXZ .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RSI, 0b1111111111111 # instrumentation
CMOVP RBX, qword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RAX], -63 
SBB DIL, 114 
AND RAX, 0b1111111111111 # instrumentation
CMOVO RBX, qword ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
