.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
CMOVS SI, word ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RAX], RDX 
CWDE  
JL .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
CMOVS ECX, dword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
CMP RBX, qword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNL DX, word ptr [R14 + RDX] 
MOVZX EBX, DIL 
AND RSI, 0b1111111111111 # instrumentation
IMUL RSI, qword ptr [R14 + RSI], -76 
AND RDX, 0b1111111111111 # instrumentation
LOCK DEC dword ptr [R14 + RDX] 
JMP .bb_main.2 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RDX], EAX 
AND RDI, 0b1111111111111 # instrumentation
CMOVO RSI, qword ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RCX], -56 
AND RAX, 0b1111111111111 # instrumentation
ADD BX, word ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RDI], DL 
NEG DI 
AND RSI, 0b1111111111111 # instrumentation
CMOVS EBX, dword ptr [R14 + RSI] 
JNO .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
MOVZX RSI, DI 
AND RDI, 0b1111111111111 # instrumentation
CMOVBE RDI, qword ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RCX], RSI 
ADC DX, DI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
