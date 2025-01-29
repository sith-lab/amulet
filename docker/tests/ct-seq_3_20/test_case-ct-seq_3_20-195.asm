.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RDX], AL 
CMOVNL BX, AX 
AND RDX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDX], DL 
AND RSI, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RSI], AL 
MOVZX EDX, DL 
JNL .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
IMUL EDI, dword ptr [R14 + RDX], 113 
AND RSI, 0b1111111111111 # instrumentation
MOVZX EBX, word ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RAX], BL 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RDX], DL 
SUB RAX, 1010509682 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RCX], CL 
AND RCX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RCX], -5 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RDI], -52 
JMP .bb_main.2 
.bb_main.2:
MUL SIL 
AND RDX, 0b1111111111111 # instrumentation
MOV RCX, qword ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVO RDI, qword ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RCX], DL 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RBX], 114 
AND RDX, 0b1111111111111 # instrumentation
SUB AL, byte ptr [R14 + RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
