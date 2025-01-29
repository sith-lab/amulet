.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RCX], -75 
AND RBX, 0b1111111111111 # instrumentation
CMOVNS EDI, dword ptr [R14 + RBX] 
OR RDX, 0b1000000000000000000000000000000 # instrumentation
BSF RDX, RDX 
ADD DIL, -107 # instrumentation
CMOVO ECX, EDX 
SUB ECX, 52 
AND RDX, 0b1111111111111 # instrumentation
MOV CX, word ptr [R14 + RDX] 
MOVZX RDX, BL 
CMOVNB AX, CX 
AND RCX, 0b1111111111111 # instrumentation
CMOVB RDI, qword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
SBB BL, byte ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
IMUL byte ptr [R14 + RBX] 
DEC BL 
AND RBX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RBX], AL 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RAX], 27 
AND RDX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDX], -107 
MUL DL 
STD  
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RAX], 69 
CMOVNL DX, DI 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RDI], EDI 
AND RSI, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RSI], EDX 
AND RAX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RAX], 0b1000000000000000000000000000000 # instrumentation
BSR RCX, qword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RSI], DL 
AND RBX, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK DEC dword ptr [R14 + RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
