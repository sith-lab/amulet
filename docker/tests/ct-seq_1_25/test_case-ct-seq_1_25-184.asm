.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CMP EAX, 646454239 
AND RSI, 0b1111111111111 # instrumentation
ADC BX, word ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RAX], 28480 
OR ESI, 0b1000000000000000000000000000000 # instrumentation
BSR EAX, ESI 
AND RCX, 0b1111111111111 # instrumentation
CMOVZ DX, word ptr [R14 + RCX] 
ADC EAX, -843454650 
ADD AL, CL 
IMUL DX, AX, -61 
CMOVNO RCX, RSI 
AND RBX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RBX], 0b1000000000000000000000000000000 # instrumentation
BSF RBX, qword ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RCX], ESI 
AND RDX, 0b1111111111111 # instrumentation
SBB AL, byte ptr [R14 + RDX] 
NEG DL 
AND RCX, 0b1111111111111 # instrumentation
SBB EDX, dword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RDI], RSI 
SBB AL, -84 
CMOVNLE RCX, RDI 
ADD SI, 121 
AND RCX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RCX], EBX 
AND RSI, 0b1111111111111 # instrumentation
MOVZX RDX, word ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RBX], RAX 
CMOVNL BX, DX 
MUL ECX 
INC CL 
AND RAX, 0b1111111111111 # instrumentation
CMOVL BX, word ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
