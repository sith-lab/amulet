.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, -16 # instrumentation
ADC BL, DL 
SBB EAX, -1068358415 
AND RDX, 0b1111111111111 # instrumentation
CMOVB RCX, qword ptr [R14 + RDX] 
CMOVS RBX, RDI 
JMP .bb_main.1 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RDI], BL 
MOV EAX, EAX 
CLD  
CMP DIL, -31 
AND RBX, 0b1111111111111 # instrumentation
MOVSX DI, byte ptr [R14 + RBX] 
CMP CL, BL 
JMP .bb_main.2 
.bb_main.2:
CMP CX, BX 
AND RDI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDI], 1 # instrumentation
AND DX, word ptr [R14 + RDI] # instrumentation
SHR DX, 1 # instrumentation
DIV word ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
DEC word ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
SBB DIL, byte ptr [R14 + RSI] 
JNLE .bb_main.3 
JMP .bb_main.5 
.bb_main.3:
ADD DIL, 64 # instrumentation
CMOVP EAX, EAX 
INC SI 
AND RCX, 0b1111111111111 # instrumentation
CMOVO EDX, dword ptr [R14 + RCX] 
MOVZX CX, CL 
AND RDI, 0b1111111111111 # instrumentation
INC byte ptr [R14 + RDI] 
CMOVNL DX, SI 
JMP .bb_main.4 
.bb_main.4:
SUB AX, AX 
MUL RSI 
AND RSI, 0b1111111111111 # instrumentation
MOVZX EDI, word ptr [R14 + RSI] 
ADC EAX, -111 
INC BX 
OR CX, 0b1000000000000000 # instrumentation
BSR SI, CX 
SUB EAX, 2110059619 
ADC RAX, -69594516 
JMP .bb_main.5 
.bb_main.5:
AND RDX, 0b1111111111111 # instrumentation
SUB CL, byte ptr [R14 + RDX] 
CMOVL SI, SI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
