.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RDX], -59 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RDI], RBX 
AND RDX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDX], EAX 
AND RDX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RDX], SI 
ADC DIL, CL 
JNP .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
NEG qword ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RCX], 31 
AND RAX, 0b1111111111111 # instrumentation
CMOVNL EAX, dword ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
IMUL ESI, dword ptr [R14 + RAX], -14 
AND RSI, 0b1111111111111 # instrumentation
IMUL EAX, dword ptr [R14 + RSI], 63 
AND RDX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RDX], ESI 
CMOVZ EBX, EDI 
AND RAX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RAX], DIL 
AND RDI, 0b1111111111111 # instrumentation
MOVSX EDI, byte ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
CMOVZ ESI, dword ptr [R14 + RAX] 
JP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RSI], DIL 
CMP EAX, -65250164 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RCX], RAX 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RSI], SI 
AND RCX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RCX], -40 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
