.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RBX], DL 
AND RDX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RDX], 1 
MUL EDX 
NEG RAX 
AND RBX, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RBX] 
DEC BL 
JMP .bb_main.1 
.bb_main.1:
ADD SIL, -39 # instrumentation
XCHG RAX, RAX 
JO .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
LOCK NEG qword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RDI], ECX 
AND RDX, 0b1111111111111 # instrumentation
CMOVP RCX, qword ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
INC word ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNZ EBX, dword ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
SBB DL, byte ptr [R14 + RSI] 
INC DL 
AND RDX, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RDX] 
JBE .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
ADD SIL, 117 # instrumentation
CMOVO RSI, RAX 
OR AX, 1 # instrumentation
AND DX, AX # instrumentation
SHR DX, 1 # instrumentation
DIV AX 
IMUL EAX 
AND RCX, 0b1111111111111 # instrumentation
CMOVB EDX, dword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RDI], EDX 
JMP .bb_main.4 
.bb_main.4:
SUB AL, -64 
BSWAP RCX 
STC  
AND RBX, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RBX] 
JMP .bb_main.5 
.bb_main.5:
AND RDX, 0b1111111111111 # instrumentation
CMOVNS DI, word ptr [R14 + RDX] 
CMOVNZ CX, SI 
CMOVNL CX, DI 
CMOVP EBX, ECX 
SUB DIL, -36 
XCHG RAX, RAX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
