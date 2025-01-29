.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLC  
SUB RSI, RSI 
AND RDI, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
ADD RBX, qword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
SUB RAX, qword ptr [R14 + RDX] 
ADC DIL, 108 
AND RDX, 0b1111111111111 # instrumentation
CMOVNBE EDI, dword ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDI], AX 
CMOVO RDX, RDX 
CMP EAX, -1261391599 
OR DX, 0b1000000000000000 # instrumentation
BSR AX, DX 
AND RCX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RCX], -12 
CBW  
AND RSI, 0b1111111111111 # instrumentation
IMUL dword ptr [R14 + RSI] 
MOVSX EDX, DX 
MOVZX ECX, DIL 
MUL BL 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RSI], BL 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RSI], EDX 
CMOVNBE RAX, RDX 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RCX], 27 
AND RSI, 0b1111111111111 # instrumentation
CMOVO EBX, dword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RAX], ECX 
AND RDX, 0b1111111111111 # instrumentation
DEC dword ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RCX], BL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
