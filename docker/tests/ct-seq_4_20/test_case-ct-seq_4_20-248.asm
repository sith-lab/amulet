.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RDI], CL 
AND RDI, 0b1111111111111 # instrumentation
IMUL RDX, qword ptr [R14 + RDI], -8 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RCX], 62 
AND RDX, 0b1111111111111 # instrumentation
CMOVNB CX, word ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RDX], -70 
AND RDI, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RDI], DX 
JBE .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RAX], RCX 
CMOVNLE RBX, RAX 
AND RBX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RBX], DX 
CMOVNZ CX, DX 
AND RBX, 0b1111111111111 # instrumentation
IMUL EDI, dword ptr [R14 + RBX] 
JMP .bb_main.2 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
MOV DL, byte ptr [R14 + RSI] 
CMOVS EDX, EDI 
AND RSI, 0b1111111111111 # instrumentation
MOVSX RCX, word ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RBX], -42 
JMP .bb_main.3 
.bb_main.3:
ADD SIL, 10 # instrumentation
CMOVL ECX, EDI 
CMOVNS EAX, ECX 
IMUL RBX, RBX 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RSI], CL 
AND RSI, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RSI], ECX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
