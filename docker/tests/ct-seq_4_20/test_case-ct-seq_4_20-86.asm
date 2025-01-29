.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RSI], 112 
AND RAX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RAX], -59 
CMOVS DX, DI 
SBB EAX, -95 
AND RSI, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RSI], BL 
AND RCX, 0b1111111111111 # instrumentation
CMOVNB ESI, dword ptr [R14 + RCX] 
JMP .bb_main.1 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RBX], DL 
AND RAX, 0b1111111111111 # instrumentation
SUB EAX, dword ptr [R14 + RAX] 
CMOVNP RAX, RSI 
AND RBX, 0b1111111111111 # instrumentation
ADC RSI, qword ptr [R14 + RBX] 
JMP .bb_main.2 
.bb_main.2:
ADD SIL, -115 # instrumentation
CMOVNZ DX, DX 
AND RAX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RAX], 28 
AND RCX, 0b1111111111111 # instrumentation
LOCK DEC word ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RBX], AL 
AND RDX, 0b1111111111111 # instrumentation
CMOVLE RAX, qword ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RBX], AX 
JLE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RCX, 0b1111111111111 # instrumentation
CMOVNBE CX, word ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RDI], -83 
AND RSI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RSI], 0b1000000000000000000000000000000 # instrumentation
BSF ECX, dword ptr [R14 + RSI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
