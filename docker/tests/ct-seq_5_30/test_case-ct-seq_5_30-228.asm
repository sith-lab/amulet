.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RDX], CL 
CMP AL, -19 
AND RDI, 0b1111111111111 # instrumentation
CMOVZ SI, word ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RCX], AL 
AND RDX, 0b1111111111111 # instrumentation
MOVSX EAX, byte ptr [R14 + RDX] 
JMP .bb_main.1 
.bb_main.1:
ADD DIL, 2 # instrumentation
MOVSX RBX, BX 
CMOVNS ECX, EBX 
AND RSI, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RSI] 
SBB RBX, 75 
SUB SIL, 85 
JNBE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
CMP RCX, 35 
IMUL DX, DI, 83 
AND RSI, 0b1111111111111 # instrumentation
CMOVP RAX, qword ptr [R14 + RSI] 
INC RSI 
AND RCX, 0b1111111111111 # instrumentation
LOCK NEG word ptr [R14 + RCX] 
JMP .bb_main.3 
.bb_main.3:
AND RDI, 0b1111111111111 # instrumentation
LOCK DEC dword ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
CMOVBE EAX, dword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDX], 0b1000000000000000000000000000000 # instrumentation
BSR RDI, qword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
MOVSX EDI, byte ptr [R14 + RSI] 
CMP BL, 17 
AND RDX, 0b1111111111111 # instrumentation
SBB AL, byte ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK DEC word ptr [R14 + RDX] 
CMOVL AX, DX 
AND RSI, 0b1111111111111 # instrumentation
LOCK NEG dword ptr [R14 + RSI] 
CMOVNL AX, SI 
JRCXZ .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RDX, 0b1111111111111 # instrumentation
MOVSX ECX, word ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
MOVZX CX, byte ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK NEG word ptr [R14 + RDI] 
CBW  
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RAX], SI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
