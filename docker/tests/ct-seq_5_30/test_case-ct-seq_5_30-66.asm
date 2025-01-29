.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
IMUL BL 
AND RDI, 0b1111111111111 # instrumentation
NEG qword ptr [R14 + RDI] 
MUL EDI 
ADD DIL, -52 # instrumentation
MOV CL, -44 
JL .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
CLD  
AND RDI, 0b1111111111111 # instrumentation
CMOVNL RDI, qword ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
CMOVZ EDX, dword ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RBX], RDX 
AND RBX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RBX], 74 
NEG CL 
AND RDI, 0b1111111111111 # instrumentation
CMOVZ DX, word ptr [R14 + RDI] 
SBB EDX, EDX 
JMP .bb_main.2 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
IMUL dword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
CMP EDI, dword ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVL RCX, qword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
IMUL dword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RDX], 31 
JNLE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
XCHG SI, DX 
MOVZX EDX, AX 
XCHG EDX, EBX 
AND RBX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RBX], 0b1000000000000000000000000000000 # instrumentation
BSR RCX, qword ptr [R14 + RBX] 
ADD SIL, -90 # instrumentation
CMOVLE RDI, RCX 
AND RBX, 0b1111111111111 # instrumentation
SBB EBX, dword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RDI], -11 
JNZ .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
ADD DIL, -60 # instrumentation
ADC RSI, RBX 
ADC RAX, RDX 
DEC ESI 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RCX], 66 
AND RDX, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RSI], 35 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
