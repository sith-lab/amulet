.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
LOCK DEC word ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
MOVZX RSI, word ptr [R14 + RDI] 
SAHF  
CMOVBE RBX, RBX 
AND RDX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RDX], SI 
IMUL ESI, ESI, 82 
AND RSI, 0b1111111111111 # instrumentation
IMUL CX, word ptr [R14 + RSI], 24 
AND RDI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDI], 15930 
MOVZX EBX, DL 
AND RCX, 0b1111111111111 # instrumentation
DEC dword ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RAX], 15 
AND RSI, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RSI], RCX 
CWDE  
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RBX], EAX 
AND RBX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RBX], 100 
AND RDI, 0b1111111111111 # instrumentation
LOCK NEG byte ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
CMOVB SI, word ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVP DI, word ptr [R14 + RSI] 
ADC EDX, EDI 
AND RCX, 0b1111111111111 # instrumentation
LOCK DEC byte ptr [R14 + RCX] 
CMOVO RAX, RCX 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RAX], DX 
AND RDI, 0b1111111111111 # instrumentation
SUB EDX, dword ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
CMOVL RDX, qword ptr [R14 + RCX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
