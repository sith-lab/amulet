.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RDI], -119 
CLC  
INC DX 
CMOVL EDX, EDI 
CMOVO CX, DI 
JLE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RDX], AL 
CMOVNBE DX, DX 
AND RBX, 0b1111111111111 # instrumentation
ADC AL, byte ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RBX], 57 
AND RDX, 0b1111111111111 # instrumentation
IMUL EBX, dword ptr [R14 + RDX] 
NEG EDI 
JMP .bb_main.2 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RSI], -23 
CMOVS ESI, EDX 
XCHG RDI, RDX 
AND RDX, 0b1111111111111 # instrumentation
LOCK NEG word ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RSI], CL 
JMP .bb_main.3 
.bb_main.3:
ADD SIL, -31 # instrumentation
CMOVNL RDX, RDI 
SBB ECX, ESI 
XCHG RSI, RSI 
AND RDX, 0b1111111111111 # instrumentation
LOCK DEC qword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RDX], -20 
JNBE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
SUB EAX, EBX 
XCHG SIL, DIL 
AND RDX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RDX], RCX 
OR DX, 0b1000000000000000 # instrumentation
BSR DX, DX 
AND RSI, 0b1111111111111 # instrumentation
CMOVNZ AX, word ptr [R14 + RSI] 
JBE .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
ADD DIL, -39 # instrumentation
SBB BX, -35 
CMOVBE RCX, RSI 
INC AX 
ADC AX, 31542 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
