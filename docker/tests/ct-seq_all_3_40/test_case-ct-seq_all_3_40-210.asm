.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND AX, -25160 
MOVSX EDI, DL 
AND RBX, 0b1111111111111 # instrumentation
CMOVLE RSI, qword ptr [R14 + RBX] 
CMPXCHG BL, AL 
AND BX, -85 
CMOVNLE EAX, ECX 
SUB ESI, EAX 
OR DL, 107 
IMUL EAX, EDX 
ADD SIL, -125 # instrumentation
MOVZX CX, CL 
JS .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
OR CX, 0b1000000000000000 # instrumentation
BSR SI, CX 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RCX], 49 
SETL DL 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RAX], AX 
AND RDX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDX], RDX 
AND RCX, 0b1111111111111 # instrumentation
IMUL RDX, qword ptr [R14 + RCX] 
XOR SI, DI 
SETNL AL 
AND RAX, 0b1111111111111 # instrumentation
CMPXCHG byte ptr [R14 + RAX], DIL 
SETNZ BL 
XOR AX, -31 
NOP  
AND RSI, 0b1111111111111 # instrumentation
AND qword ptr [R14 + RSI], RDI 
AND RBX, 0b1111111111111 # instrumentation
OR EBX, dword ptr [R14 + RBX] 
IMUL RCX, RCX, -113 
ADD DL, DL 
CMOVNBE RDI, RAX 
JMP .bb_main.2 
.bb_main.2:
TEST EDX, EBX 
MOV AX, -18375 
AND RDX, 0b1111111111111 # instrumentation
CMOVS RSI, qword ptr [R14 + RDX] 
CMOVNLE RAX, RDX 
AND RBX, 0b1111111111111 # instrumentation
XOR RDX, qword ptr [R14 + RBX] 
XOR RDX, 55 
ADC RAX, 1399622476 
SETB BL 
NEG RDX 
SETNL CL 
AND RDX, 0b1111111111111 # instrumentation
XOR word ptr [R14 + RDX], -19 
XOR RDX, RDI 
AND RSI, 0b1111111111111 # instrumentation
CMOVNBE ECX, dword ptr [R14 + RSI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
