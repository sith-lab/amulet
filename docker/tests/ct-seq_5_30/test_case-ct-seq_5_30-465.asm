.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RAX], EBX 
AND RDX, 0b1111111111111 # instrumentation
CMOVZ RDI, qword ptr [R14 + RDX] 
ADC RAX, 1602668869 
CMOVB RAX, RDI 
AND RBX, 0b1111111111111 # instrumentation
LOCK NEG qword ptr [R14 + RBX] 
JP .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
CMOVNP AX, word ptr [R14 + RDI] 
SBB AL, SIL 
AND RDX, 0b1111111111111 # instrumentation
SUB CL, byte ptr [R14 + RDX] 
JMP .bb_main.2 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
IMUL RDI, qword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RSI], -44 
AND RAX, 0b1111111111111 # instrumentation
CMOVNL RDX, qword ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
DEC word ptr [R14 + RAX] 
ADD EAX, -929335052 
MOV BL, AL 
MOVSX RAX, DX 
ADD BX, BX 
ADC CL, BL 
LOOP .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
AND RDI, 0b1111111111111 # instrumentation
CMOVNP ECX, dword ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
CMP DX, word ptr [R14 + RAX] 
JMP .bb_main.4 
.bb_main.4:
AND RBX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RBX], 92 
ADC CL, CL 
CMOVNO RSI, RSI 
AND RCX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RCX], 1 # instrumentation
AND DX, word ptr [R14 + RCX] # instrumentation
SHR DX, 1 # instrumentation
DIV word ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVO RAX, qword ptr [R14 + RSI] 
SBB DIL, -32 
AND RDX, 0b1111111111111 # instrumentation
LOCK DEC dword ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
SBB AL, byte ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
IMUL dword ptr [R14 + RDI] 
DEC RCX 
ADC SIL, -17 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
