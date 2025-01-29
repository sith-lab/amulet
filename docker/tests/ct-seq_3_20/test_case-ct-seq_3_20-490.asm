.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RDX], 122 
SBB RAX, -1909375484 
AND RCX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RCX], DL 
AND RSI, 0b1111111111111 # instrumentation
IMUL EDI, dword ptr [R14 + RSI], 90 
AND RCX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RCX], -13 
CMOVLE RBX, RDI 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RCX], EDX 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RSI], EDI 
JNL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
MOVZX RCX, byte ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RAX], ECX 
AND RBX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RBX], EAX 
CWDE  
AND RSI, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RSI], -48 
AND RBX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RBX], ECX 
MUL RDX 
JMP .bb_main.2 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
IMUL EBX, dword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RDX], 120 
AND RDX, 0b1111111111111 # instrumentation
LOCK DEC dword ptr [R14 + RDX] 
ADD EAX, -1379944336 
AND RSI, 0b1111111111111 # instrumentation
SBB SI, word ptr [R14 + RSI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
