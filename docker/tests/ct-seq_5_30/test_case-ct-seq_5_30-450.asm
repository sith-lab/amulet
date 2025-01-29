.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
OR EDI, 0b1000000000000000000000000000000 # instrumentation
BSR EBX, EDI 
SUB RBX, RDX 
MOVZX EBX, BL 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RDI], -121 
AND RBX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RBX], -27 
LOOPNE .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RDX], 7 
AND RDI, 0b1111111111111 # instrumentation
CMOVZ RBX, qword ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RCX], ECX 
IMUL EAX, EBX 
AND RSI, 0b1111111111111 # instrumentation
CMOVS RBX, qword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RAX], 1 # instrumentation
JL .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
ADD DIL, 37 # instrumentation
ADC RAX, RSI 
CMOVP RBX, RDX 
STC  
JMP .bb_main.3 
.bb_main.3:
ADD SIL, -117 # instrumentation
XCHG RCX, RAX 
SBB CL, SIL 
AND RSI, 0b1111111111111 # instrumentation
IMUL RAX, qword ptr [R14 + RSI], -112 
AND RDX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RDX], -89 
CMOVNO RCX, RAX 
AND RSI, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RSI], SIL 
AND RDI, 0b1111111111111 # instrumentation
MOV CL, byte ptr [R14 + RDI] 
CMOVNBE EBX, EDI 
AND RBX, 0b1111111111111 # instrumentation
IMUL byte ptr [R14 + RBX] 
CMP CL, DL 
AND RCX, 0b1111111111111 # instrumentation
SUB DIL, byte ptr [R14 + RCX] 
LOOPNE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RCX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RCX], 0b1000000000000000000000000000000 # instrumentation
BSF RBX, qword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK DEC qword ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNL ESI, dword ptr [R14 + RBX] 
SBB AL, DL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
