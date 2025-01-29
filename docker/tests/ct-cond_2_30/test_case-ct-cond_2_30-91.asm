.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, 112 # instrumentation
CMOVNL RCX, RAX 
AND RCX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RCX], RDX 
AND RDX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RDX], 20 
AND RCX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RCX], EAX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNBE RCX, qword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVO CX, word ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RCX], AL 
AND RCX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RCX], 111 
AND RDI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDI], BL 
AND RDI, 0b1111111111111 # instrumentation
MOVZX RDI, byte ptr [R14 + RDI] 
CMP DI, BX 
CMOVL RDX, RDX 
AND RDI, 0b1111111111111 # instrumentation
ADD BL, byte ptr [R14 + RDI] 
JB .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
CMOVNO EAX, dword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RDI], -23 
CLC  
MOV RAX, -6028852071690524921 
NEG DL 
ADD RAX, RAX 
IMUL DX 
AND RDI, 0b1111111111111 # instrumentation
MOV RSI, qword ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RAX], RAX 
AND RDI, 0b1111111111111 # instrumentation
IMUL SI, word ptr [R14 + RDI], 72 
MOVSX RDX, AL 
AND RCX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RCX], 91 
AND RSI, 0b1111111111111 # instrumentation
CMOVNO RDI, qword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
ADD DL, byte ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RSI], EAX 
CMOVZ DX, SI 
CMP RDI, RCX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
