.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, 8 # instrumentation
CLD  
CMOVNL AX, CX 
MOV DL, AL 
AND RBX, 0b1111111111111 # instrumentation
CMOVBE RDI, qword ptr [R14 + RBX] 
CMOVNO DX, SI 
AND RDI, 0b1111111111111 # instrumentation
SBB BL, byte ptr [R14 + RDI] 
CMOVNBE DX, DX 
JBE .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RBX], 0 
AND RDX, 0b1111111111111 # instrumentation
ADC BL, byte ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK DEC qword ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
ADD EDX, dword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK NEG word ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
SUB DIL, byte ptr [R14 + RDI] 
JNLE .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
MOVSX BX, BL 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RDX], -106 
AND RCX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RCX], SI 
MOV BL, -59 
JMP .bb_main.3 
.bb_main.3:
IMUL DX, BX 
CMOVB RDX, RDI 
AND RDX, 0b1111111111111 # instrumentation
ADD DI, word ptr [R14 + RDX] 
CMOVL RAX, RCX 
AND RCX, 0b1111111111111 # instrumentation
MOVZX RSI, word ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RBX], AL 
AND RAX, 0b1111111111111 # instrumentation
CMOVBE DI, word ptr [R14 + RAX] 
CMOVO DX, DI 
JMP .bb_main.4 
.bb_main.4:
AND RAX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RAX], SIL 
AND RSI, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RSI], 85 
CMOVO DX, DI 
MOVSX ECX, CL 
AND RAX, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RAX], ECX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
