.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RDX], AL 
AND RBX, 0b1111111111111 # instrumentation
CMOVNZ ESI, dword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RDX], EBX 
ADD RCX, 74 
AND RCX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RCX], ESI 
CMOVNO BX, AX 
AND RDI, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RDI], -5 
ADC EAX, -470013866 
CMOVZ EAX, EDX 
AND RDI, 0b1111111111111 # instrumentation
MOV BL, byte ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
CMOVB CX, word ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
NEG qword ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RDI], 59 
AND RBX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RBX], BX 
ADC EAX, 82717765 
MOVZX RDI, DI 
AND RDX, 0b1111111111111 # instrumentation
CMOVNO DX, word ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RSI], RAX 
AND RBX, 0b1111111111111 # instrumentation
CMOVNZ SI, word ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RAX], -122 
AND RSI, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RDX], -4 
CMOVNZ EAX, ESI 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RDX], 10 
AND RSI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RSI], AX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
