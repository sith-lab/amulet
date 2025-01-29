.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RAX], CL 
AND RCX, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
SUB EDI, dword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
CMOVZ AX, word ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
CMOVZ ESI, dword ptr [R14 + RAX] 
LOOPE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
DEC AL 
CMP RDX, RDX 
AND RDX, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RDX], RCX 
AND RSI, 0b1111111111111 # instrumentation
IMUL word ptr [R14 + RSI] 
MOV CL, 116 
AND RCX, 0b1111111111111 # instrumentation
SBB BX, word ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
IMUL RDI, qword ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
SUB EDX, dword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RAX], BL 
AND RDI, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RDI], RCX 
JMP .bb_main.2 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RDI], SIL 
AND RCX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RCX], -44 
SBB RAX, 1909967168 
JLE .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
ADD DIL, -14 # instrumentation
CMOVNP SI, BX 
CMOVNS EBX, ECX 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RDI], 7 
MUL ESI 
AND RDX, 0b1111111111111 # instrumentation
CMOVNL ECX, dword ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RBX], 868641436 
JP .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RAX, 0b1111111111111 # instrumentation
LOCK DEC word ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDX], BL 
XCHG RBX, RAX 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RBX], 9 
MUL RSI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
