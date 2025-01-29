.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RDX], 39 
ADC DIL, SIL 
AND RAX, 0b1111111111111 # instrumentation
INC byte ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RBX], BL 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RDI], EDX 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RAX], DI 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RBX], -4 
AND RAX, 0b1111111111111 # instrumentation
CMOVB SI, word ptr [R14 + RAX] 
SBB EDX, EDX 
JMP .bb_main.1 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
NEG dword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
IMUL EDX, dword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
IMUL ESI, dword ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RSI], BL 
LOOPNE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RAX], -125 
AND RSI, 0b1111111111111 # instrumentation
MUL word ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
DEC dword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
MOVZX DI, byte ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNLE SI, word ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK DEC byte ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVL DI, word ptr [R14 + RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
