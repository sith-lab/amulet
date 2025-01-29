.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
MOVZX ECX, word ptr [R14 + RDI] 
DEC DL 
MOVZX BX, CL 
ADC ESI, 51 
MOVZX DX, DL 
AND RBX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RBX], 553487201 
AND RSI, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RSI], -21 
JNP .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
SBB EAX, dword ptr [R14 + RBX] 
IMUL RCX 
ADD SIL, -15 # instrumentation
CLC  
CMOVS AX, DI 
AND RDI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDI], SIL 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RSI], 44 
JMP .bb_main.2 
.bb_main.2:
BSWAP EDI 
IMUL DI, CX, 57 
SAHF  
AND RSI, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RSI], EDX 
AND RCX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RCX], CL 
LEA RBX, qword ptr [RDX] 
JNB .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
AND RAX, 0b1111111111111 # instrumentation
CMOVNLE DI, word ptr [R14 + RAX] 
CMOVO RBX, RBX 
MOVZX EBX, DL 
AND RDX, 0b1111111111111 # instrumentation
SBB EBX, dword ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RCX], 0b1000000000000000 # instrumentation
BSR DX, word ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RDX], EDX 
AND RSI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RSI], 0b1000000000000000000000000000000 # instrumentation
BSF RCX, qword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
ADD RDI, qword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDI], AX 
JRCXZ .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RBX, 0b1111111111111 # instrumentation
CMP BX, word ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RAX], -25048 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
