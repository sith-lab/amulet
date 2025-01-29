.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
IMUL RCX, qword ptr [R14 + RSI] 
CMP SIL, 52 
AND RAX, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNL SI, word ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
CMOVO RDI, qword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RAX], DL 
IMUL SI, AX, 102 
IMUL DI, DX, -81 
MOVZX RBX, CX 
AND RSI, 0b1111111111111 # instrumentation
IMUL dword ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RBX], RSI 
CMOVNS AX, DX 
AND RDX, 0b1111111111111 # instrumentation
MOVSX ECX, byte ptr [R14 + RDX] 
ADD AL, CL 
JNL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RCX], ECX 
AND RCX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RCX], RAX 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RBX], -15 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RSI], RBX 
ADD EDI, EBX 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RCX], RBX 
AND RDI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDI], CL 
AND RDX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RDX] 
MOVZX AX, DIL 
IMUL CX 
ADD DIL, 88 
XCHG RDX, RAX 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RDI], EBX 
AND RAX, 0b1111111111111 # instrumentation
CMOVP RDX, qword ptr [R14 + RAX] 
CMOVNO ESI, EDI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
