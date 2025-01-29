.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
INC byte ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RDX], -100 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RCX], 126 
AND RBX, 0b1111111111111 # instrumentation
CMOVNL EDI, dword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNS EBX, dword ptr [R14 + RBX] 
CMOVB EDX, EDX 
MOV RAX, -8166742200973539843 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RDX], 114 
SUB RAX, RDX 
AND RSI, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RSI], EAX 
AND RCX, 0b1111111111111 # instrumentation
MOVZX RBX, byte ptr [R14 + RCX] 
MUL AL 
MOV DL, 88 
AND RBX, 0b1111111111111 # instrumentation
MUL dword ptr [R14 + RBX] 
ADD SIL, 103 # instrumentation
CMOVS RDX, RBX 
CMP RSI, -121 
CMP EAX, 1106507067 
XCHG DX, AX 
JLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
CMOVLE EBX, dword ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNZ SI, word ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RAX] 
SUB EDX, EBX 
IMUL AX 
AND RDI, 0b1111111111111 # instrumentation
NEG qword ptr [R14 + RDI] 
CMOVNP RSI, RDI 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RDX], AL 
AND RDI, 0b1111111111111 # instrumentation
CMOVNB RCX, qword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RDI], EAX 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RBX], EDI 
SBB AL, CL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
