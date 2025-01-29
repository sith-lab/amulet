.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RSI], -9 
CMOVO RSI, RCX 
AND RSI, 0b1111111111111 # instrumentation
CMOVBE SI, word ptr [R14 + RSI] 
ADC RAX, -1731630404 
STC  
AND RDX, 0b1111111111111 # instrumentation
MUL qword ptr [R14 + RDX] 
IMUL EDX, ESI, 49 
AND RDX, 0b1111111111111 # instrumentation
INC dword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
CMP BL, byte ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RDX], EDX 
XCHG EDI, EBX 
XCHG SI, CX 
ADD AL, -5 
AND RDI, 0b1111111111111 # instrumentation
MOVZX EDX, byte ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RDX], EAX 
AND RAX, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RAX] 
CMOVL SI, BX 
AND RAX, 0b1111111111111 # instrumentation
CMOVNLE EDX, dword ptr [R14 + RAX] 
SBB RAX, -38566251 
ADC AL, DIL 
AND RSI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RSI], 0 
IMUL RSI, RSI, 115 
AND RCX, 0b1111111111111 # instrumentation
IMUL dword ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
SUB RDX, qword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
MOV DL, byte ptr [R14 + RSI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
