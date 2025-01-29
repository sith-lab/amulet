.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, -36 # instrumentation
CMOVBE RSI, RDX 
SETLE AL 
AND RAX, 0b1111111111111 # instrumentation
AND byte ptr [R14 + RAX], 93 
AND RDI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDI], CX 
AND RAX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RAX], CX 
AND RDX, 0b1111111111111 # instrumentation
SETZ byte ptr [R14 + RDX] 
CMOVNP DX, DI 
OR EAX, 630406623 
AND RAX, 0b1111111111111 # instrumentation
CMOVNL EBX, dword ptr [R14 + RAX] 
CMOVNLE AX, DX 
MUL AL 
ADD SIL, 122 # instrumentation
SETL DIL 
XOR SI, CX 
AND RSI, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RSI], 74 
ADC AL, -119 
JNS .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
MOVSX RAX, byte ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
LOCK INC word ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RDI], CL 
CMPXCHG BL, BL 
AND RBX, 0b1111111111111 # instrumentation
CMOVBE SI, word ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
MOVZX EDX, byte ptr [R14 + RSI] 
MOVZX RDI, AL 
ADC ESI, ECX 
SBB SIL, -126 
AND RCX, 0b1111111111111 # instrumentation
XOR dword ptr [R14 + RCX], EDI 
MOVZX EDI, DL 
CBW  
JMP .bb_main.2 
.bb_main.2:
CLD  # instrumentation
AND RDI, 0b1111111111111 # instrumentation
CMOVO EAX, dword ptr [R14 + RDI] 
OR AX, 32397 
ADD CX, SI 
ADD RAX, RSI 
XOR RDI, -51 
CMOVS EBX, ECX 
OR BL, -108 
AND EBX, 72 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
STOSD  
AND RCX, 0b1111111111111 # instrumentation
AND RCX, qword ptr [R14 + RCX] 
SBB AX, 8641 
CMOVLE EDI, ECX 
MOV EAX, 1949522072 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
