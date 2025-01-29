.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
XOR EAX, EAX 
AND RBX, 0b1111111111111 # instrumentation
LOCK XADD qword ptr [R14 + RBX], RDI 
AND RCX, 0b1111111111111 # instrumentation
LOCK XOR word ptr [R14 + RCX], DI 
IMUL CX 
ADD SIL, 82 # instrumentation
SETNZ DL 
CMP RSI, RBX 
CMOVL ESI, EAX 
CMOVL DI, SI 
CMOVNP RDI, RCX 
IMUL EDI 
AND RDX, 0b1111111111111 # instrumentation
IMUL dword ptr [R14 + RDX] 
ADD SIL, 116 # instrumentation
JNBE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RDI], ESI 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RDX], RDI 
IMUL RAX 
SBB BL, DL 
AND RAX, 0b1111111111111 # instrumentation
AND DL, byte ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK INC word ptr [R14 + RDX] 
SETNBE CL 
AND RSI, 0b1111111111111 # instrumentation
LOCK NOT qword ptr [R14 + RSI] 
SBB AL, -82 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RCX], 93 
OR CL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV CL 
LOOP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
ADD DIL, 96 # instrumentation
ADC RBX, 49 
ADD AL, 124 
SBB EAX, 250584844 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RBX], BL 
AND RDX, 0b1111111111111 # instrumentation
SBB SI, word ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNL DI, word ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RCX], SI 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RBX], -71 
DEC RBX 
CMOVNZ EAX, EDI 
ADC RDI, 12 
MOVSX RDX, DI 
AND RAX, 0b1111111111111 # instrumentation
XOR word ptr [R14 + RAX], 86 
XOR RAX, 851729252 
AND RAX, 327727157 
IMUL AX, DX 
CMOVNO SI, CX 
AND RSI, 0b1111111111111 # instrumentation
SETNBE byte ptr [R14 + RSI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
