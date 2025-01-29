.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
ADD DIL, -54 # instrumentation
CMOVNL RSI, RCX 
AND RCX, 0b1111111111111 # instrumentation
CMOVLE ECX, dword ptr [R14 + RCX] 
CMOVL RDX, RDX 
SBB AL, 96 
AND RCX, 0b1111111111111 # instrumentation
IMUL RDI, qword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
MOVSW  
CMOVS DI, CX 
ADC SIL, DL 
SBB RAX, -637372937 
CMOVNP ECX, ECX 
AND RSI, 0b1111111111111 # instrumentation
IMUL EBX, dword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
ADC BL, byte ptr [R14 + RDX] 
CMOVLE RDI, RDX 
JNBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
LOCK DEC byte ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RCX], -27 
AND RDI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDI], EAX 
AND RAX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RAX], 0b1000000000000000000000000000000 # instrumentation
BSF RDX, qword ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDI], EAX 
AND RAX, 0b1111111111111 # instrumentation
IMUL RBX, qword ptr [R14 + RAX], 105 
ADD DIL, -13 # instrumentation
CMOVNO EBX, ESI 
CMOVNLE RSI, RSI 
CMOVNS RCX, RBX 
ADC BL, AL 
ADC AX, 14521 
CMP SIL, 5 
AND RDX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RDX], -100 
IMUL EAX 
ADC AL, 119 
AND RCX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RCX], -94 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
