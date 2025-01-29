.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
INC CL 
CMP RCX, -77 
AND RDI, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RDI], 1 # instrumentation
MOV AX, 1 # instrumentation
DIV byte ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
CMOVBE DI, word ptr [R14 + RDX] 
ADC CX, 26 
JBE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
IMUL CL 
AND RSI, 0b1111111111111 # instrumentation
INC byte ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RAX], CX 
IMUL RDX 
AND RDX, 0b1111111111111 # instrumentation
MOVSX ECX, word ptr [R14 + RDX] 
JMP .bb_main.2 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDI], SIL 
AND RAX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RAX], -3 
AND RDI, 0b1111111111111 # instrumentation
CMOVS BX, word ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
INC dword ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RSI], 103 
CMOVB EBX, ECX 
JL .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
ADD SIL, -1 # instrumentation
CMOVNO EDI, ECX 
DEC RAX 
CMOVP AX, CX 
MUL DIL 
JMP .bb_main.4 
.bb_main.4:
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RAX], -111 
AND RBX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RBX], DL 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RCX], -126 
BSWAP RBX 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RAX], -39 
NEG EBX 
JO .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
STD  
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RDI], 21 
ADD RAX, RSI 
OR DX, 0b1000000000000000 # instrumentation
BSR CX, DX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
