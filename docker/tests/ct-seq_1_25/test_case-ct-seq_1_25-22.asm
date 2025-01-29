.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
SBB CL, byte ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVZ DI, word ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RBX], RSI 
IMUL AL 
AND RSI, 0b1111111111111 # instrumentation
SUB CX, word ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
ADD BL, byte ptr [R14 + RDI] 
SUB AL, CL 
CBW  
AND RAX, 0b1111111111111 # instrumentation
LOCK INC byte ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
SBB EAX, dword ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNO EAX, dword ptr [R14 + RAX] 
MOVSX SI, AL 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RDI], BL 
AND RDX, 0b1111111111111 # instrumentation
CMOVNBE EDX, dword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDX], SIL 
IMUL EBX, EDI, -78 
SBB RAX, 2092447423 
AND RAX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RAX], BL 
AND RDI, 0b1111111111111 # instrumentation
CMOVP DX, word ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RSI], -18 
CMOVNL RBX, RSI 
CMP DI, -29 
CDQ  
AND RDI, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RDI], BX 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RBX], AL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
