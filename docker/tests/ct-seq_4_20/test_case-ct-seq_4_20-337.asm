.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD RSI, 76 
AND RDX, 0b1111111111111 # instrumentation
CMOVNL SI, word ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RSI], 30 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RBX], CL 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RCX], 42 
AND RCX, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RCX] 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RAX], RDI 
CMOVLE ESI, EDI 
NEG SIL 
AND RAX, 0b1111111111111 # instrumentation
ADC DX, word ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
IMUL EDX, dword ptr [R14 + RBX], -5 
JMP .bb_main.2 
.bb_main.2:
ADD EDI, ECX 
XCHG RDX, RAX 
INC RAX 
AND RDI, 0b1111111111111 # instrumentation
LOCK NEG dword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
CMOVB EAX, dword ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
LOCK INC word ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNL RAX, qword ptr [R14 + RSI] 
JNS .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RBX, 0b1111111111111 # instrumentation
IMUL EDX, dword ptr [R14 + RBX], 0 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RDX], CL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
