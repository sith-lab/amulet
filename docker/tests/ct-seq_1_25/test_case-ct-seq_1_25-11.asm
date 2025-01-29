.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
SUB AL, byte ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RCX], ECX 
CMOVNL RCX, RBX 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RDX], BL 
IMUL RDX, RDI 
AND RSI, 0b1111111111111 # instrumentation
ADC DL, byte ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
IMUL word ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RSI], DL 
AND RBX, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RBX], SI 
AND RDX, 0b1111111111111 # instrumentation
CMP ESI, dword ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RCX], 0b1000000000000000000000000000000 # instrumentation
BSF RCX, qword ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RSI], 72 
AND RCX, 0b1111111111111 # instrumentation
ADD CX, word ptr [R14 + RCX] 
IMUL RCX, RDX 
ADD DIL, -120 # instrumentation
CMOVNZ EAX, ESI 
AND RAX, 0b1111111111111 # instrumentation
SBB RAX, qword ptr [R14 + RAX] 
CMP SI, CX 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RAX], 64 
AND RBX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RBX], 37 
AND RCX, 0b1111111111111 # instrumentation
NEG dword ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RAX], DL 
MOVSX ECX, CL 
CMOVO RCX, RBX 
AND RBX, 0b1111111111111 # instrumentation
MOVZX ESI, word ptr [R14 + RBX] 
CMOVO EDX, EDX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
