.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
SBB RSI, qword ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RCX], 53 
AND RCX, 0b1111111111111 # instrumentation
CMOVNS DX, word ptr [R14 + RCX] 
MUL DL 
AND RSI, 0b1111111111111 # instrumentation
LOCK DEC dword ptr [R14 + RSI] 
JNS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
SUB DX, word ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RAX], AL 
AND RDX, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RBX], DIL 
AND RDI, 0b1111111111111 # instrumentation
SBB BL, byte ptr [R14 + RDI] 
MOVSX CX, CL 
CMOVNZ AX, DX 
JP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RSI], 102 
AND RDI, 0b1111111111111 # instrumentation
IMUL DI, word ptr [R14 + RDI], 14 
AND RCX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RCX], 72 
AND RSI, 0b1111111111111 # instrumentation
CMOVNZ DX, word ptr [R14 + RSI] 
JMP .bb_main.3 
.bb_main.3:
AND RBX, 0b1111111111111 # instrumentation
LOCK NEG qword ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNLE RBX, qword ptr [R14 + RCX] 
SBB DIL, -79 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RDX], 7 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
