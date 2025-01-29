.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RBX], SI 
AND RDI, 0b1111111111111 # instrumentation
SBB DIL, byte ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
MOVSX RAX, byte ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RSI], -17 
CMOVNL CX, DI 
AND RDX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDX], 0b1000000000000000000000000000000 # instrumentation
BSF RDX, qword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RDX], AL 
CMOVP EAX, EDX 
AND RCX, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RCX] 
SUB AL, 36 
AND RAX, 0b1111111111111 # instrumentation
LOCK NEG qword ptr [R14 + RAX] 
ADC AL, -118 
CMOVBE RCX, RDI 
AND RBX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RBX], -46 
AND RCX, 0b1111111111111 # instrumentation
ADC ESI, dword ptr [R14 + RCX] 
SUB RBX, -121 
AND RCX, 0b1111111111111 # instrumentation
CMOVBE SI, word ptr [R14 + RCX] 
MOVSX ESI, DI 
AND RCX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RAX], DL 
OR EAX, 1 # instrumentation
AND EDX, EAX # instrumentation
SHR EDX, 1 # instrumentation
DIV EAX 
CMP SIL, DIL 
SAHF  
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RCX], 63 
AND RBX, 0b1111111111111 # instrumentation
MOVSX CX, byte ptr [R14 + RBX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
