.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RAX], DX 
AND RAX, 0b1111111111111 # instrumentation
DEC dword ptr [R14 + RAX] 
JNL .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
CMOVNL SI, word ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
ADC CL, byte ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
DEC qword ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNO SI, word ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
IMUL EDI, dword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
MUL dword ptr [R14 + RDI] 
ADD DIL, -28 # instrumentation
JL .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
ADD DIL, 74 # instrumentation
CMOVZ RAX, RSI 
OR ECX, 0b1000000000000000000000000000000 # instrumentation
BSR EDX, ECX 
AND RAX, 0b1111111111111 # instrumentation
CMOVNZ DI, word ptr [R14 + RAX] 
JMP .bb_main.3 
.bb_main.3:
AND RAX, 0b1111111111111 # instrumentation
MOV RSI, qword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVLE EBX, dword ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RBX], SIL 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RDX], DX 
CMOVB RDX, RAX 
SBB ESI, EDX 
AND RSI, 0b1111111111111 # instrumentation
CMOVLE ESI, dword ptr [R14 + RSI] 
ADC AL, -78 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
