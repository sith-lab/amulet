.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
IMUL RDI, RSI, -39 
ADC RDX, RAX 
AND RDI, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RDI], 115 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RSI], CL 
JMP .bb_main.1 
.bb_main.1:
SUB CL, -18 
AND RCX, 0b1111111111111 # instrumentation
CMOVNS RBX, qword ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RSI], 62 
JBE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
ADD SIL, -45 # instrumentation
CMOVB CX, SI 
ADC BX, 31 
SBB EAX, -2104896764 
AND RCX, 0b1111111111111 # instrumentation
CMP DL, byte ptr [R14 + RCX] 
IMUL SIL 
LEA ECX, qword ptr [RBX + RDX + 39163] 
CMOVNO DI, DX 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RAX], 95 
XCHG SI, AX 
JL .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
ADD DIL, -33 # instrumentation
CMOVNLE RDX, RDX 
CMOVZ SI, CX 
AND RSI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RSI], AL 
AND RCX, 0b1111111111111 # instrumentation
CMOVNBE RSI, qword ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RBX], -56 
AND RCX, 0b1111111111111 # instrumentation
MOVZX EAX, byte ptr [R14 + RCX] 
SUB AL, 49 
XCHG RSI, RSI 
AND RDI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSR ESI, dword ptr [R14 + RDI] 
OR RDX, 0b1000000000000000000000000000000 # instrumentation
BSR RBX, RDX 
LOOP .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
ADD EDI, ECX 
AND RAX, 0b1111111111111 # instrumentation
LOCK INC byte ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RDI], DX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
