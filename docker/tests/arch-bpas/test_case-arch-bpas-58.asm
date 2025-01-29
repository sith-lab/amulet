.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
CMOVL DI, word ptr [R14 + RSI] 
SUB DIL, 47 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RSI], SI 
XOR AX, -5857 
TEST RDX, RBX 
AND RSI, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RSI], 5 
IMUL SIL 
AND RDX, 0b1111111111111 # instrumentation
AND DL, byte ptr [R14 + RDX] 
OR RBX, RAX 
TEST RAX, 681322843 
AND RDI, 0b1111111111111 # instrumentation
SBB RDI, qword ptr [R14 + RDI] 
DEC RDI 
AND RDI, 0b1111111111111 # instrumentation
NEG qword ptr [R14 + RDI] 
JS .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
CLD  # instrumentation
AND RDX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RDX], -93 
SBB CL, 76 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
STOSB  
SUB AL, DL 
CMP SIL, 111 
NEG EDI 
ADD ESI, -79 
CMOVL EDI, ESI 
MOV BX, 9066 
ADD RSI, RDX 
CMOVS EAX, EBX 
XADD DI, DI 
CMP DX, 37 
SETB DL 
JMP .bb_main.2 
.bb_main.2:
CLD  # instrumentation
ADD SIL, 69 # instrumentation
CMOVNZ AX, DX 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
STOSB  
SETS DL 
SUB BX, -32 
OR RCX, -25 
AND RSI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RSI], 0b1000000000000000000000000000000 # instrumentation
BSR RDI, qword ptr [R14 + RSI] 
MOV CL, AL 
AND RDX, 0b1111111111111 # instrumentation
LOCK OR dword ptr [R14 + RDX], 28 
AND RAX, 0b1111111111111 # instrumentation
CMOVS RDX, qword ptr [R14 + RAX] 
ADC BX, -18 
AND RAX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RAX], 126 
AND RDI, 0b1111111111111 # instrumentation
CMOVBE EAX, dword ptr [R14 + RDI] 
TEST ECX, -1403896345 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
