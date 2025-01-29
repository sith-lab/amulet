.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RCX], DL 
AND RSI, 0b1111111111111 # instrumentation
CMOVZ DI, word ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RCX] 
SUB SIL, DL 
SBB AX, -97 
MUL EDX 
AND RCX, 0b1111111111111 # instrumentation
MOV DL, byte ptr [R14 + RCX] 
CMOVL RDI, RAX 
SBB AX, DI 
AND RCX, 0b1111111111111 # instrumentation
IMUL SI, word ptr [R14 + RCX], 17 
ADD DL, 110 
AND RCX, 0b1111111111111 # instrumentation
MUL dword ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RSI], DIL 
NEG RCX 
AND RAX, 0b1111111111111 # instrumentation
MOVSX EAX, word ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
MOVZX RSI, word ptr [R14 + RDX] 
CMP ECX, -27 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RDX], 9 
AND RAX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RAX], DI 
AND RBX, 0b1111111111111 # instrumentation
LOCK DEC dword ptr [R14 + RBX] 
CMOVNBE BX, DI 
IMUL CX, AX, -83 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RDI], -106 
MOV DL, DIL 
MOV SIL, -74 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
