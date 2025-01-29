.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RSI], 2 
AND RCX, 0b1111111111111 # instrumentation
IMUL dword ptr [R14 + RCX] 
STC  
SBB RDX, RBX 
AND RCX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVB BX, word ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RAX], EBX 
AND RAX, 0b1111111111111 # instrumentation
SBB RSI, qword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVLE RBX, qword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RAX], -70 
AND RSI, 0b1111111111111 # instrumentation
CMOVO SI, word ptr [R14 + RSI] 
XCHG CX, AX 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RCX], 61 
AND RDI, 0b1111111111111 # instrumentation
IMUL RCX, qword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RDI], 70 
AND RSI, 0b1111111111111 # instrumentation
CMOVNZ SI, word ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RDI], -123 
AND RDX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RDX], RAX 
SAHF  
CMOVB DI, BX 
AND RAX, 0b1111111111111 # instrumentation
DEC word ptr [R14 + RAX] 
OR BX, 1 # instrumentation
AND DX, BX # instrumentation
SHR DX, 1 # instrumentation
DIV BX 
ADD SIL, 115 # instrumentation
CMOVNP EDI, EDI 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RCX], AL 
CMP AL, 34 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
