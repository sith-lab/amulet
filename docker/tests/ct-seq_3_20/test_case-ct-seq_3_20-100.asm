.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
IMUL RDI, qword ptr [R14 + RBX] 
INC AX 
AND RAX, 0b1111111111111 # instrumentation
CMOVNLE ESI, dword ptr [R14 + RAX] 
CMOVL RDX, RAX 
JMP .bb_main.1 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
IMUL word ptr [R14 + RAX] 
CMP SI, -87 
CWD  
AND RSI, 0b1111111111111 # instrumentation
ADD AX, word ptr [R14 + RSI] 
LAHF  
JLE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
SUB AL, 57 
SUB EAX, -1050210580 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RSI], AL 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RCX], ECX 
AND RBX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RBX], 3 
IMUL DI 
AND RAX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RAX], -69 
STC  
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RDX], AX 
AND RSI, 0b1111111111111 # instrumentation
CMP DIL, byte ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
