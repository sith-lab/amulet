.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RBX], ESI 
XCHG DL, AL 
AND RBX, 0b1111111111111 # instrumentation
MOVZX DI, byte ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RDX], EDX 
AND RSI, 0b1111111111111 # instrumentation
CMOVNZ SI, word ptr [R14 + RSI] 
JMP .bb_main.1 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
CMOVNP CX, word ptr [R14 + RDX] 
XCHG DX, AX 
CMOVNLE EDX, ESI 
SBB RAX, 589392293 
CMOVZ EDX, EAX 
CMOVS SI, AX 
AND RSI, 0b1111111111111 # instrumentation
CMOVBE BX, word ptr [R14 + RSI] 
JP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
CMOVNP DX, word ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RDI], -62 
AND RAX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RAX], DL 
AND RDI, 0b1111111111111 # instrumentation
IMUL RDX, qword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RDI], EAX 
AND RSI, 0b1111111111111 # instrumentation
DEC qword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RDI], RDI 
AND RAX, 0b1111111111111 # instrumentation
CMOVNZ DI, word ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
