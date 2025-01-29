.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
CMOVBE AX, word ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RBX], -56 
ADD AX, 28064 
AND RBX, 0b1111111111111 # instrumentation
CMOVNL BX, word ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RDX], AX 
AND RBX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RBX], ESI 
ADD AL, BL 
AND RAX, 0b1111111111111 # instrumentation
CMOVP EBX, dword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RSI], AL 
SBB RAX, -403364613 
OR CX, 1 # instrumentation
AND DX, CX # instrumentation
SHR DX, 1 # instrumentation
DIV CX 
AND RDI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDI], -1349412234 
INC AL 
XCHG RSI, RAX 
CMOVP SI, DX 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RDI], EAX 
AND RBX, 0b1111111111111 # instrumentation
INC dword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RAX], -124 
CMOVO DX, AX 
AND RAX, 0b1111111111111 # instrumentation
CMOVO RSI, qword ptr [R14 + RAX] 
INC DL 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RDX], 50 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RSI], 18 
AND RCX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RCX], -125 
AND RBX, 0b1111111111111 # instrumentation
IMUL word ptr [R14 + RBX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
