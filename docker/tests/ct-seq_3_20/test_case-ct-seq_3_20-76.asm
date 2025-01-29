.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
IMUL CX, word ptr [R14 + RCX], -66 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RDX], 47 
CMOVNL RAX, RCX 
AND RDX, 0b1111111111111 # instrumentation
LOCK NEG qword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RDX], 39 
AND RSI, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RSI], 75 
CMOVNLE CX, AX 
AND RDI, 0b1111111111111 # instrumentation
CMOVB RDX, qword ptr [R14 + RDI] 
JRCXZ .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
CMOVP RDX, qword ptr [R14 + RDX] 
OR RDI, 0b1000000000000000000000000000000 # instrumentation
BSR RCX, RDI 
AND RDX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RDX], BL 
AND RAX, 0b1111111111111 # instrumentation
CMOVNZ EDI, dword ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNB DI, word ptr [R14 + RAX] 
JZ .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
MUL word ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
ADD BX, word ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK INC byte ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDI], BX 
AND RSI, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RSI] 
SBB RDI, RBX 
CMP EDX, 47 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
