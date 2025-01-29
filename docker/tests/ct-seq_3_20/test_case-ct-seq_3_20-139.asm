.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, 12 # instrumentation
CMOVZ RBX, RBX 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RDI], CL 
AND RAX, 0b1111111111111 # instrumentation
SUB EBX, dword ptr [R14 + RAX] 
ADC CL, BL 
AND RCX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RCX], 0b1000000000000000000000000000000 # instrumentation
BSR RSI, qword ptr [R14 + RCX] 
ADD DIL, 81 # instrumentation
JO .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
CWD  
AND RAX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RAX], CX 
AND RCX, 0b1111111111111 # instrumentation
CMOVNP AX, word ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
CMP BX, word ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RSI], SI 
SBB RAX, 1757842481 
AND RSI, 0b1111111111111 # instrumentation
MOVZX RBX, word ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RDI], BX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNL DX, word ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RSI], AX 
AND RDI, 0b1111111111111 # instrumentation
MOVZX EAX, byte ptr [R14 + RDI] 
CMP SI, 89 
LOOP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RDX], AL 
AND RDX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RDX], -44 
ADC RSI, RDI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
