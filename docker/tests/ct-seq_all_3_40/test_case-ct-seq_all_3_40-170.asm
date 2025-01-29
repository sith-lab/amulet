.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
SUB BX, -96 
DEC AL 
AND RBX, 0b1111111111111 # instrumentation
AND EAX, dword ptr [R14 + RBX] 
SETS AL 
CMP EDI, EDI 
SBB DL, 46 
AND RAX, 0b1111111111111 # instrumentation
CMOVS DI, word ptr [R14 + RAX] 
SETS BL 
SETBE AL 
DEC RDI 
IMUL ESI 
ADD SI, -29 
SBB AX, 4905 
AND RDI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDI], -75 
AND RAX, 0b1111111111111 # instrumentation
TEST qword ptr [R14 + RAX], -673812871 
SETNLE CL 
JNS .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
CMOVB RDX, qword ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
LOCK OR word ptr [R14 + RBX], BX 
AND RCX, 0b1111111111111 # instrumentation
CMOVBE RCX, qword ptr [R14 + RCX] 
MUL AL 
OR EAX, 0b1000000000000000000000000000000 # instrumentation
BSF EAX, EAX 
AND RAX, 0b1111111111111 # instrumentation
CMOVNO CX, word ptr [R14 + RAX] 
SBB EDX, EDX 
INC DIL 
AND DX, DX 
NEG RSI 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RDX], -86 
NEG DL 
AND RAX, 0b1111111111111 # instrumentation
CMOVNZ EBX, dword ptr [R14 + RAX] 
ADC AX, -21468 
JBE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
CLD  # instrumentation
ADD SIL, -62 # instrumentation
SETZ AL 
ADC CL, -64 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
STOSW  
SBB RBX, RAX 
NEG RCX 
AND RDX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RDX], DL 
MOV CX, DI 
CMOVNL CX, BX 
CMOVS RDX, RAX 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RDX], -97 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
