.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MOVZX EAX, DL 
DEC DL 
MOV EDI, EDI 
AND RDI, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RDI], 52 
CWDE  
AND RAX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RAX], RCX 
AND RDX, 0b1111111111111 # instrumentation
LOCK DEC qword ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVZ DI, word ptr [R14 + RCX] 
JNLE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
INC dword ptr [R14 + RAX] 
ADC BL, CL 
AND RCX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RCX], RDX 
CMOVNO SI, CX 
AND RSI, 0b1111111111111 # instrumentation
SUB AL, byte ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNO ECX, dword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNBE DI, word ptr [R14 + RDI] 
JMP .bb_main.2 
.bb_main.2:
ADD DIL, -47 # instrumentation
CMOVBE RDI, RDX 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RSI], 110 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RAX], -72 
AND RBX, 0b1111111111111 # instrumentation
ADD RDI, qword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RAX], EBX 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RBX], -67 
JO .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
ADD DIL, -25 # instrumentation
CMOVNP ESI, ESI 
SUB EBX, EBX 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RSI], RSI 
AND RDX, 0b1111111111111 # instrumentation
CMOVNLE RDI, qword ptr [R14 + RDX] 
CMP AL, BL 
JMP .bb_main.4 
.bb_main.4:
XCHG AL, CL 
AND RDI, 0b1111111111111 # instrumentation
CMOVNS BX, word ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
MOVZX RCX, word ptr [R14 + RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
