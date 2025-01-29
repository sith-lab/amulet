.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
INC AL 
AND RCX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RCX], AL 
AND RDI, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RDI], BL 
AND RAX, 0b1111111111111 # instrumentation
MOV BX, word ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RCX], ECX 
JLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RCX], DL 
AND RDX, 0b1111111111111 # instrumentation
CMOVNLE EBX, dword ptr [R14 + RDX] 
CMOVNB RBX, RCX 
AND RAX, 0b1111111111111 # instrumentation
CMOVZ RAX, qword ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNL EDX, dword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
ADD BL, byte ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RCX], -22684 
JRCXZ .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
LOCK INC dword ptr [R14 + RSI] 
NEG CL 
AND RBX, 0b1111111111111 # instrumentation
SUB AL, byte ptr [R14 + RBX] 
MUL DL 
JMP .bb_main.3 
.bb_main.3:
MOVZX EBX, DX 
AND RSI, 0b1111111111111 # instrumentation
INC byte ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
CMOVP RBX, qword ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RBX], RAX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
