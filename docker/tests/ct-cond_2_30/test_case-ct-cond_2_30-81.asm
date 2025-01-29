.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CMP EAX, -840016048 
AND RDX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDX], CL 
INC DL 
AND RBX, 0b1111111111111 # instrumentation
CMOVZ RDX, qword ptr [R14 + RBX] 
OR BX, 0b1000000000000000 # instrumentation
BSR BX, BX 
CMP DIL, SIL 
AND RSI, 0b1111111111111 # instrumentation
CMOVO CX, word ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
LOCK NEG qword ptr [R14 + RDI] 
IMUL RSI, RDI, 89 
SBB EAX, ESI 
AND RSI, 0b1111111111111 # instrumentation
IMUL ECX, dword ptr [R14 + RSI] 
ADD DIL, -104 # instrumentation
CMOVNS BX, DI 
AND RAX, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RAX], AL 
JL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD SIL, -2 # instrumentation
SBB RBX, RDX 
SBB DIL, 116 
SBB EAX, EDI 
AND RDX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDX], CL 
ADD RBX, RDX 
ADC ECX, EDI 
AND RAX, 0b1111111111111 # instrumentation
CMOVP CX, word ptr [R14 + RAX] 
MOVSX SI, BL 
LEA DI, qword ptr [RBX + RSI + 63112] 
CMOVNL AX, DI 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RAX], ESI 
AND RBX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RBX], AX 
BSWAP RBX 
AND RDI, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RDI], 1 
AND RBX, 0b1111111111111 # instrumentation
MOVZX BX, byte ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RCX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
