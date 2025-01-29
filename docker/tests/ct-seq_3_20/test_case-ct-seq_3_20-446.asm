.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RBX], -65 
AND RDI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDI], DIL 
AND RDI, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RDI], BX 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RBX], 61 
JMP .bb_main.1 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RDI], CL 
AND RAX, 0b1111111111111 # instrumentation
NEG qword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RDX], EDX 
AND RBX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RBX], AL 
AND RDI, 0b1111111111111 # instrumentation
MOVSX DX, byte ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RSI], 0b1000000000000000 # instrumentation
BSF SI, word ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RSI] 
INC DL 
AND RDX, 0b1111111111111 # instrumentation
LOCK DEC dword ptr [R14 + RDX] 
JL .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RAX], 24 
AND RCX, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RCX], BX 
AND RBX, 0b1111111111111 # instrumentation
IMUL EDX, dword ptr [R14 + RBX], -106 
AND RSI, 0b1111111111111 # instrumentation
CMOVL CX, word ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
CMOVBE AX, word ptr [R14 + RCX] 
CMOVO ESI, EDX 
AND RDX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDX], -100 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
