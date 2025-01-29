.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
SUB AL, byte ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
ADC EBX, dword ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
ADD DIL, byte ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RAX], 45 
SUB DL, -128 
AND RSI, 0b1111111111111 # instrumentation
SUB AX, word ptr [R14 + RSI] 
JMP .bb_main.1 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RCX], EDI 
AND RAX, 0b1111111111111 # instrumentation
LOCK NEG qword ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RDI], DI 
AND RCX, 0b1111111111111 # instrumentation
CMOVP DI, word ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSR ECX, dword ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
MOVZX EAX, byte ptr [R14 + RAX] 
JP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
CMP RDI, qword ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RBX], DIL 
AND RBX, 0b1111111111111 # instrumentation
IMUL RAX, qword ptr [R14 + RBX], 91 
AND RDX, 0b1111111111111 # instrumentation
MOVSX DI, byte ptr [R14 + RDX] 
IMUL RDX, RCX, 98 
AND RDI, 0b1111111111111 # instrumentation
CMOVO RBX, qword ptr [R14 + RDI] 
CMOVLE RSI, RAX 
AND RSI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RSI], RBX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
