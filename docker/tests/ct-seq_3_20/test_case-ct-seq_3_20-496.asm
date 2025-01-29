.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
CMOVNL AX, word ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNB CX, word ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RDI], CL 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RBX], 69 
XCHG DX, AX 
AND RSI, 0b1111111111111 # instrumentation
CMOVO SI, word ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RDX] 
JMP .bb_main.1 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RDX], DIL 
AND RBX, 0b1111111111111 # instrumentation
CMOVNS EAX, dword ptr [R14 + RBX] 
CBW  
AND RDX, 0b1111111111111 # instrumentation
IMUL ECX, dword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
SBB ECX, dword ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RCX], -89 
JBE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RBX], ECX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNZ RAX, qword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
MUL qword ptr [R14 + RSI] 
ADD DIL, 19 # instrumentation
CMOVP DI, SI 
CMOVS SI, DX 
AND RBX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RBX], 80 
AND RSI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RSI], 0b1000000000000000000000000000000 # instrumentation
BSF RAX, qword ptr [R14 + RSI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
