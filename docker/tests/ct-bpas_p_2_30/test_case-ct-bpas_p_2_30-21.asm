.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RSI], -126 
MOVZX EDX, SI 
CMOVNBE RBX, RCX 
AND RDX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RDX], RBX 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RCX], -36 
AND RAX, 0b1111111111111 # instrumentation
CMOVZ EBX, dword ptr [R14 + RAX] 
SBB CX, 29 
AND RAX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RAX], EDI 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RBX], AL 
CMOVB EBX, EDX 
AND RBX, 0b1111111111111 # instrumentation
CMOVNS ECX, dword ptr [R14 + RBX] 
IMUL SI, CX, -46 
JO .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
CLD  # instrumentation
LEA ESI, qword ptr [RDI + RDX] 
AND RDX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDX], 0b1000000000000000000000000000000 # instrumentation
BSF RDX, qword ptr [R14 + RDX] 
CWD  
SUB DI, AX 
AND RCX, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
SCASW  
ADC DL, 27 
AND RSI, 0b1111111111111 # instrumentation
LOCK NEG qword ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
CMOVB ESI, dword ptr [R14 + RSI] 
SBB AL, 86 
AND RDX, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RCX], ESI 
CMOVNP RAX, RDX 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RBX], DX 
AND RBX, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RSI], RSI 
MOV AX, 12040 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
