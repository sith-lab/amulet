.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
CMOVO EAX, dword ptr [R14 + RCX] 
MOV RCX, 8146298992773487948 
AND RCX, 0b1111111111111 # instrumentation
CMOVNB RBX, qword ptr [R14 + RCX] 
XCHG EAX, EDX 
XCHG CL, DIL 
AND RSI, 0b1111111111111 # instrumentation
NEG qword ptr [R14 + RSI] 
JP .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
CMOVNBE ESI, dword ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
SBB EBX, dword ptr [R14 + RAX] 
SBB RAX, 2050546611 
STC  
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RAX], 93 
AND RDX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RDX], AL 
AND RCX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RCX], EAX 
JS .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
LOCK DEC dword ptr [R14 + RBX] 
ADD RSI, 124 
AND RDX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RDX], ESI 
AND RSI, 0b1111111111111 # instrumentation
CMOVNP EDI, dword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNLE DI, word ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RDX], BL 
DEC BL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
