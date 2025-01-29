.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MOVZX EDX, DX 
AND RSI, 0b1111111111111 # instrumentation
SUB BL, byte ptr [R14 + RSI] 
SBB CX, 120 
AND RCX, 0b1111111111111 # instrumentation
MOVZX EDX, byte ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
IMUL DI, DI, -108 
SBB RAX, 92 
CMOVO SI, AX 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RSI], -43 
SUB DL, DL 
CMOVNB AX, CX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNB RDI, qword ptr [R14 + RDI] 
CMP BL, 114 
CMP AX, -15173 
ADD AX, DI 
MOVSX CX, CL 
MOVSX DI, DL 
CMOVZ AX, AX 
DEC RDI 
AND RSI, 0b1111111111111 # instrumentation
NEG dword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RDX], 81 
AND RAX, 0b1111111111111 # instrumentation
MOVZX EDX, byte ptr [R14 + RAX] 
BSWAP EAX 
AND RSI, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RSI], 2 
AND RAX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RAX], AX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
