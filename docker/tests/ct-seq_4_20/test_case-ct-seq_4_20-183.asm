.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
OR BX, 0b1000000000000000 # instrumentation
BSF CX, BX 
AND RSI, 0b1111111111111 # instrumentation
MOVZX RDX, word ptr [R14 + RSI] 
CMOVBE DX, CX 
SBB BL, 60 
AND RSI, 0b1111111111111 # instrumentation
CMOVB ESI, dword ptr [R14 + RSI] 
ADD SIL, -58 
AND RDX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RDX], -81 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RSI], ESI 
JNBE .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
ADD AX, 31863 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RBX], EAX 
JNS .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RBX], DL 
AND RDX, 0b1111111111111 # instrumentation
ADC RBX, qword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
SBB BL, byte ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RBX], RSI 
CMOVL RDX, RBX 
CMOVB EBX, EDX 
JMP .bb_main.3 
.bb_main.3:
AND RDI, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RDI], DIL 
AND RSI, 0b1111111111111 # instrumentation
CMOVZ BX, word ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
MOVZX RBX, byte ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
NEG dword ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
