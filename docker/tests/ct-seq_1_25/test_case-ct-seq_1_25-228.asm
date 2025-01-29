.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
CMOVZ ECX, dword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RAX], RAX 
SUB BX, DI 
AND RAX, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RAX] 
SUB DI, DX 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RCX], EBX 
SBB ECX, 43 
MOV AL, -76 
IMUL DX, DI 
ADD DIL, -19 # instrumentation
CMOVS DI, CX 
AND RSI, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RSI], CL 
AND RSI, 0b1111111111111 # instrumentation
MOVZX RAX, word ptr [R14 + RSI] 
ADC DI, 119 
ADC DL, -62 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RBX], RBX 
AND RDI, 0b1111111111111 # instrumentation
MOVSX DI, byte ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
IMUL DX, word ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RCX], RBX 
AND RBX, 0b1111111111111 # instrumentation
CMOVL RAX, qword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK INC byte ptr [R14 + RBX] 
OR EDI, 0b1000000000000000000000000000000 # instrumentation
BSR ESI, EDI 
AND RDX, 0b1111111111111 # instrumentation
CMOVP RAX, qword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVB RCX, qword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RAX], RDX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
