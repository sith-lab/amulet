.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
CMP BX, SI 
SBB AL, 92 
AND RCX, 0b1111111111111 # instrumentation
CMOVL RBX, qword ptr [R14 + RCX] 
CMOVBE EBX, EAX 
DEC ESI 
AND RCX, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RCX], 16 
ADD RCX, RCX 
AND RCX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RCX], -103 
AND RDX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RDX], 1 # instrumentation
SETNP DL 
AND RCX, 0b1111111111111 # instrumentation
IMUL word ptr [R14 + RCX] 
ADD SIL, -51 # instrumentation
SETS BL 
SETNLE AL 
SUB AL, AL 
LEA RCX, qword ptr [RAX + RDX] 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
LODSD  
ADD BX, SI 
NOP  
TEST DIL, -4 
SBB EBX, -8 
CMP BX, SI 
AND AL, -110 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
NOT RDI 
AND RBX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RDX], -126 
AND RSI, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RSI], 75 
AND RDX, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RDX] 
OR EDX, 1 # instrumentation
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RDX], RDI 
ADD DIL, AL 
AND RDX, 0b1111111111111 # instrumentation
SUB AL, byte ptr [R14 + RDX] 
MUL BX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNBE DI, word ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDI], DL 
CMP EAX, 1037074793 
AND RDI, 0b1111111111111 # instrumentation
CMOVNL DI, word ptr [R14 + RDI] 
OR EAX, ECX 
AND RCX, 0b1111111111111 # instrumentation
LOCK DEC byte ptr [R14 + RCX] 
SBB RDI, 11 
CMOVBE BX, SI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
