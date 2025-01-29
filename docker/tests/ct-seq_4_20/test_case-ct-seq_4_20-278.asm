.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RCX], -108 
AND RCX, 0b1111111111111 # instrumentation
ADD DIL, byte ptr [R14 + RCX] 
CMOVNL RBX, RBX 
JL .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
IMUL DI, word ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
NEG dword ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNBE AX, word ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
CMP BL, byte ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
MOVZX RCX, word ptr [R14 + RDI] 
JMP .bb_main.2 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RSI], BL 
AND RBX, 0b1111111111111 # instrumentation
INC word ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
IMUL EBX, dword ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK DEC word ptr [R14 + RSI] 
JNO .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RCX, 0b1111111111111 # instrumentation
SUB DL, byte ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RAX], 115 
AND RAX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RAX], CL 
AND RSI, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RSI], CL 
AND RCX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RCX], 1787195486 
AND RCX, 0b1111111111111 # instrumentation
CMOVNS DI, word ptr [R14 + RCX] 
SUB AX, 81 
AND RBX, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RBX], SI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
