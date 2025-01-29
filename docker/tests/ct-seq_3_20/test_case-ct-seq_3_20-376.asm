.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
IMUL ECX, dword ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDI], -6194 
AND RBX, 0b1111111111111 # instrumentation
CMOVNZ DI, word ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
NEG dword ptr [R14 + RCX] 
JL .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
LOCK DEC qword ptr [R14 + RAX] 
CMP DX, 82 
DEC RBX 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RDX], -25 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RAX], RAX 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RDX], 68 
AND RDI, 0b1111111111111 # instrumentation
INC DL 
STC  
AND RDX, 0b1111111111111 # instrumentation
ADC SIL, byte ptr [R14 + RDX] 
JRCXZ .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
LOCK INC dword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RDX], 72 
AND RCX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RCX], EAX 
AND RSI, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RSI], -103 
AND RBX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RBX], CL 
CMOVNL EAX, EDX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
