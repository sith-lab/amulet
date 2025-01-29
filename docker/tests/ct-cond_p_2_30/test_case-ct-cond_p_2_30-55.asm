.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
CMOVNP DI, word ptr [R14 + RAX] 
SUB RAX, -554085336 
CMP BX, DI 
CMOVNL DI, DX 
CMOVBE SI, BX 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RDX], 51 
AND RSI, 0b1111111111111 # instrumentation
LOCK DEC dword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RAX], -35 
ADC AX, -2316 
STC  
AND RCX, 0b1111111111111 # instrumentation
MOVZX SI, byte ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
SUB RBX, qword ptr [R14 + RDI] 
CMOVNLE BX, AX 
AND RBX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RBX], AL 
AND RCX, 0b1111111111111 # instrumentation
INC word ptr [R14 + RCX] 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RBX], -56 
AND RAX, 0b1111111111111 # instrumentation
CMOVNL RSI, qword ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK NEG word ptr [R14 + RCX] 
CMOVO EDX, EBX 
CLC  
AND RDI, 0b1111111111111 # instrumentation
LOCK DEC byte ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
CMOVO DX, word ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RSI], DL 
CMOVZ SI, AX 
SUB EAX, EDI 
AND RDI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDI], 0b1000000000000000 # instrumentation
BSF CX, word ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDX], BL 
AND RBX, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RBX], BX 
ADC AX, -101 
AND RDI, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
