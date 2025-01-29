.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CWD  
AND RDX, 0b1111111111111 # instrumentation
DEC word ptr [R14 + RDX] 
CMP AX, 2643 
AND RSI, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RDX], -33 
CMOVO BX, CX 
CMOVNP SI, CX 
CMOVNL SI, DI 
JMP .bb_main.1 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RCX], 0b1000000000000000000000000000000 # instrumentation
BSF RSI, qword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
SUB RAX, qword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK DEC byte ptr [R14 + RSI] 
JNS .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
CMOVNBE RBX, qword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
CMP RDX, qword ptr [R14 + RDI] 
SBB SIL, -3 
OR RCX, 0b1000000000000000000000000000000 # instrumentation
BSF RDX, RCX 
JZ .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RSI, 0b1111111111111 # instrumentation
CMOVNZ CX, word ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
IMUL SI, word ptr [R14 + RAX] 
SBB AX, 77 
AND RAX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RAX], -58 
JMP .bb_main.4 
.bb_main.4:
XCHG BL, SIL 
AND RSI, 0b1111111111111 # instrumentation
INC dword ptr [R14 + RSI] 
CMOVNBE EDI, EBX 
CMOVS EBX, ECX 
STC  
JNP .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
ADD DIL, -91 # instrumentation
SBB DL, SIL 
AND RBX, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RBX], EBX 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RCX], 101 
AND RDI, 0b1111111111111 # instrumentation
SBB BL, byte ptr [R14 + RDI] 
XCHG SI, AX 
AND RDI, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RDI], BL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
