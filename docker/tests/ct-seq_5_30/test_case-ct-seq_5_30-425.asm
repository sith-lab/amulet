.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RSI], ECX 
SBB BX, DX 
AND RDX, 0b1111111111111 # instrumentation
INC word ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RDI] 
CMOVNL RBX, RSI 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RDI], SIL 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RCX], -15 
AND RAX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RAX], 0b1000000000000000 # instrumentation
BSF AX, word ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
IMUL word ptr [R14 + RDI] 
JMP .bb_main.2 
.bb_main.2:
ADD DIL, -93 # instrumentation
CMOVNL SI, DX 
AND RAX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RAX], -97 
AND RSI, 0b1111111111111 # instrumentation
CMOVNB RDI, qword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RCX], SI 
IMUL RSI, RBX, 92 
JMP .bb_main.3 
.bb_main.3:
AND RCX, 0b1111111111111 # instrumentation
CMOVLE RBX, qword ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RSI], DL 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RAX], AL 
CMP AX, 27157 
AND RSI, 0b1111111111111 # instrumentation
NEG qword ptr [R14 + RSI] 
OR RDX, 0b1000000000000000000000000000000 # instrumentation
BSR RAX, RDX 
ADD DIL, -87 # instrumentation
CMOVNP EBX, EBX 
JRCXZ .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
ADD DIL, -50 # instrumentation
CMOVNZ RDX, RSI 
AND RCX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RCX], 0b1000000000000000000000000000000 # instrumentation
BSR RAX, qword ptr [R14 + RCX] 
NEG RAX 
OR DL, 1 # instrumentation
CMOVS DX, BX 
CWDE  
AND RDX, 0b1111111111111 # instrumentation
NEG dword ptr [R14 + RDX] 
MOVSX AX, BL 
AND RSI, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RSI], -89 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
