.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RCX], EBX 
AND RDI, 0b1111111111111 # instrumentation
IMUL SI, word ptr [R14 + RDI] 
MOVZX RDX, CL 
AND RDI, 0b1111111111111 # instrumentation
CMOVNBE AX, word ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
CMOVZ CX, word ptr [R14 + RSI] 
JZ .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
XCHG AL, DIL 
AND RBX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RBX], AX 
AND RDX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RDX], -8 
AND RDX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNLE EDI, dword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
SUB BL, byte ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RCX] 
INC SIL 
AND RCX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVP RDI, qword ptr [R14 + RSI] 
JMP .bb_main.2 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RBX] 
SUB SIL, -83 
BSWAP RCX 
AND RCX, 0b1111111111111 # instrumentation
CMOVNL DX, word ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RSI], 37 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
