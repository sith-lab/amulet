.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
AND RDX, 0b1111111111111 # instrumentation
INC word ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RCX], -115 
SBB EBX, ECX 
SBB AX, -2858 
AND RSI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RSI], EDX 
SBB RAX, 108 
ADD EDX, -32 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
SCASW  
OR EDI, 0b1000000000000000000000000000000 # instrumentation
BSF EDX, EDI 
INC AL 
LOOPNE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD DIL, -112 # instrumentation
CMOVLE RSI, RSI 
AND RCX, 0b1111111111111 # instrumentation
IMUL RCX, qword ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
MOVZX RSI, byte ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNO AX, word ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
MOVZX DI, byte ptr [R14 + RDI] 
INC DI 
AND RDI, 0b1111111111111 # instrumentation
CMOVBE RBX, qword ptr [R14 + RDI] 
SBB DIL, DIL 
AND RDI, 0b1111111111111 # instrumentation
INC dword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
IMUL dword ptr [R14 + RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
