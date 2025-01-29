.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD ESI, ECX 
AND RBX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RBX], EDX 
AND RCX, 0b1111111111111 # instrumentation
MOVZX EBX, word ptr [R14 + RCX] 
CMOVNL EDX, EDI 
CLC  
ADC EBX, -110 
JP .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RBX], 0b1000000000000000000000000000000 # instrumentation
BSR EBX, dword ptr [R14 + RBX] 
ADD DIL, 113 # instrumentation
SBB DL, AL 
ADD AL, BL 
AND RDI, 0b1111111111111 # instrumentation
CMOVO RDI, qword ptr [R14 + RDI] 
LOOPE .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
CMP ESI, dword ptr [R14 + RAX] 
IMUL DL 
AND RCX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RCX] 
CMOVZ EDI, EBX 
CMP RAX, 651968449 
XCHG EBX, EDX 
JNLE .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
SAHF  
AND RBX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RBX], DL 
ADD AL, -82 
CMOVNBE RBX, RDX 
MUL EAX 
AND RSI, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RSI], RAX 
AND RAX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RAX], 72 
CDQ  
JMP .bb_main.4 
.bb_main.4:
ADD SIL, 70 # instrumentation
ADC AL, -32 
AND RDX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDX], AL 
ADD RBX, RSI 
AND RBX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RBX], 95 
AND RCX, 0b1111111111111 # instrumentation
ADC EBX, dword ptr [R14 + RCX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
