.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CMP DI, SI 
ADD AL, 120 
OR RBX, 0b1000000000000000000000000000000 # instrumentation
BSR RDX, RBX 
AND RBX, 0b1111111111111 # instrumentation
CMOVNBE BX, word ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK NEG qword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDI], BL 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RSI], CL 
SBB EDX, -57 
AND RAX, 0b1111111111111 # instrumentation
IMUL byte ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RDI], -75 
XCHG EBX, EAX 
CMOVNS ESI, EDI 
CMOVLE DX, DX 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RSI], SIL 
JNO .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDX], -73 
AND RSI, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RSI], 121 
CMP AL, BL 
ADD SIL, 98 
SUB AX, 28154 
AND RCX, 0b1111111111111 # instrumentation
CMOVNL ECX, dword ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
DEC word ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVP DI, word ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNO DI, word ptr [R14 + RSI] 
OR RBX, 0b1000000000000000000000000000000 # instrumentation
BSF RDI, RBX 
MUL RBX 
AND RDI, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RDI], BL 
AND RCX, 0b1111111111111 # instrumentation
CMOVNP RBX, qword ptr [R14 + RCX] 
SUB EAX, 1315898412 
AND RAX, 0b1111111111111 # instrumentation
ADD RAX, qword ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
