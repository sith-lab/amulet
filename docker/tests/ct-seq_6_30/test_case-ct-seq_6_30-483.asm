.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
LOCK NEG byte ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RDX], ECX 
CMOVL BX, CX 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RSI], 8 
CMP ECX, -6 
CMP RAX, 978935443 
AND RCX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RCX], DL 
AND RDI, 0b1111111111111 # instrumentation
CMOVNL ECX, dword ptr [R14 + RDI] 
JRCXZ .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
ADD DIL, 117 # instrumentation
CMOVO AX, CX 
CMP CL, -94 
JMP .bb_main.2 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
SUB BX, word ptr [R14 + RDI] 
CMP RAX, -2072450264 
CMOVNBE BX, SI 
IMUL BX, BX, 92 
JMP .bb_main.3 
.bb_main.3:
CWDE  
IMUL DX, DI, 57 
AND RSI, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RSI], -121 
AND RSI, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RSI], CX 
CWD  
SBB SIL, -2 
AND RDX, 0b1111111111111 # instrumentation
ADD ESI, dword ptr [R14 + RDX] 
CMOVNZ RBX, RAX 
JMP .bb_main.4 
.bb_main.4:
AND RDX, 0b1111111111111 # instrumentation
MOVSX RDX, byte ptr [R14 + RDX] 
MOVZX RCX, SIL 
AND RSI, 0b1111111111111 # instrumentation
SBB RBX, qword ptr [R14 + RSI] 
JNS .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
AND RBX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RBX], CL 
AND RCX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RCX], 87 
AND RCX, 0b1111111111111 # instrumentation
ADD AL, byte ptr [R14 + RCX] 
OR RSI, 0b1000000000000000000000000000000 # instrumentation
BSR RCX, RSI 
SUB RDI, -75 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
