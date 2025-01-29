.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, -93 # instrumentation
CMOVNO EBX, ESI 
CMOVNL RSI, RSI 
AND RDX, 0b1111111111111 # instrumentation
CMOVNL RDX, qword ptr [R14 + RDX] 
OR ECX, 0b1000000000000000000000000000000 # instrumentation
BSF EAX, ECX 
ADD RDX, 40 
JMP .bb_main.1 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RDX], DL 
AND RDX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RDX], -105 
XCHG AL, DL 
MOV AL, BL 
JNS .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
CMOVL ESI, dword ptr [R14 + RSI] 
ADC AL, CL 
AND RAX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RAX], -48 
CMOVO AX, BX 
JZ .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
ADD DIL, 37 # instrumentation
CMOVNL CX, CX 
AND RAX, 0b1111111111111 # instrumentation
ADC AX, word ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RAX], DI 
XCHG SIL, BL 
CMOVNB AX, BX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNZ RSI, qword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RSI], 120 
JMP .bb_main.4 
.bb_main.4:
ADD DIL, 44 # instrumentation
CMOVS EDI, EBX 
AND RBX, 0b1111111111111 # instrumentation
ADC AL, byte ptr [R14 + RBX] 
CMOVNBE RBX, RDX 
AND RSI, 0b1111111111111 # instrumentation
SBB BL, byte ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RAX], -24 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RAX], 41 
JNO .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
IMUL CL 
ADD DIL, 118 # instrumentation
CMOVP RCX, RBX 
CMOVS RDX, RCX 
OR AL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV AL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
