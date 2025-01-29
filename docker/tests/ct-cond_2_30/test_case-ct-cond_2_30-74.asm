.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MOVZX BX, SIL 
NEG DL 
AND RBX, 0b1111111111111 # instrumentation
IMUL ESI, dword ptr [R14 + RBX] 
MOVZX RDX, SIL 
IMUL ECX, EDI, -126 
DEC EDX 
ADD RDX, 6 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RAX], -14 
AND RDI, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RDI], 77 
AND RAX, 0b1111111111111 # instrumentation
CMOVO ESI, dword ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RCX], -16 
MUL DI 
AND RDI, 0b1111111111111 # instrumentation
CMOVNS DI, word ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RDX], -88 
CMOVNP EBX, EDI 
CDQ  
AND RDX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RDX], RSI 
AND RDX, 0b1111111111111 # instrumentation
CMOVNLE EBX, dword ptr [R14 + RDX] 
CBW  
AND RSI, 0b1111111111111 # instrumentation
ADD DI, word ptr [R14 + RSI] 
JLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNP RDI, qword ptr [R14 + RCX] 
CMOVLE ECX, EDX 
MUL CX 
AND RSI, 0b1111111111111 # instrumentation
LOCK NEG word ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RCX], SIL 
AND RDX, 0b1111111111111 # instrumentation
LOCK DEC word ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RBX], RDI 
AND RSI, 0b1111111111111 # instrumentation
SUB EAX, dword ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RSI], 41 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
