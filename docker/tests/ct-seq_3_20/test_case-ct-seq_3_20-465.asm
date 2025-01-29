.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
LOCK DEC word ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RBX], DI 
AND RDX, 0b1111111111111 # instrumentation
CMOVS RDI, qword ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RBX], 0 
OR EBX, 0b1000000000000000000000000000000 # instrumentation
BSR ECX, EBX 
AND RBX, 0b1111111111111 # instrumentation
ADC CL, byte ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RSI], SIL 
CMP DIL, 39 
JNLE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RAX], CX 
NEG SIL 
AND RAX, 0b1111111111111 # instrumentation
CMOVNL DI, word ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RBX], 17 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RAX], -79 
JMP .bb_main.2 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDI], -71 
AND RBX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RBX], RDI 
CMOVNO CX, BX 
AND RDX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RDX], RDI 
AND RDX, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RDX] 
ADC AX, -29 
AND RSI, 0b1111111111111 # instrumentation
CMOVZ RBX, qword ptr [R14 + RSI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
