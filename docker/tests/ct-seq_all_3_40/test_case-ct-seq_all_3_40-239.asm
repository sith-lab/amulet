.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, 13 # instrumentation
SETL DL 
ADD RAX, 34 
CMOVB DI, AX 
AND RCX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RCX], 3 
ADC EAX, -1506321317 
AND RAX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RAX], DIL 
AND RCX, 0b1111111111111 # instrumentation
TEST word ptr [R14 + RCX], CX 
AND RSI, 0b1111111111111 # instrumentation
MOV BX, word ptr [R14 + RSI] 
NEG ESI 
AND RAX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RAX], EDX 
AND RSI, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RSI], 1 
AND RDX, 0b1111111111111 # instrumentation
AND qword ptr [R14 + RDX], RSI 
AND RCX, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RCX], RAX 
AND RDX, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RDX], CL 
SUB AL, -127 
AND RCX, 0b1111111111111 # instrumentation
CMOVLE RDX, qword ptr [R14 + RCX] 
JMP .bb_main.1 
.bb_main.1:
CLD  # instrumentation
OR EAX, -100300705 
XOR DL, -44 
XOR EDX, ECX 
AND RDI, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RDI], CX 
CMOVNB RDI, RDI 
AND RDI, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RDI], -62 
SUB AX, 11553 
CMOVNO CX, CX 
CMPXCHG CL, BL 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
LODSD  
DEC RBX 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RDX], BX 
MOV AX, SI 
JLE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
CMOVNL DX, word ptr [R14 + RDI] 
TEST EDX, -293985445 
TEST BL, 100 
CMOVNB RDI, RDI 
AND RBX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RBX], 0b1000000000000000 # instrumentation
BSF DI, word ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
MOVSX RBX, word ptr [R14 + RDX] 
INC DL 
CMPXCHG ECX, EDI 
ADD EAX, EBX 
XOR AX, -10833 
AND RAX, 0b1111111111111 # instrumentation
CMOVB ESI, dword ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
