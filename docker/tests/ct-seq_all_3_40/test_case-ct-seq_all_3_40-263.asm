.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MOVSX ECX, CX 
XADD BL, DIL 
SBB AX, DX 
XCHG ECX, EDX 
SETNBE AL 
SETNB BL 
CMOVB RDX, RBX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNO EDX, dword ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
AND dword ptr [R14 + RCX], -123 
AND DIL, -34 
AND RCX, 0b1111111111111 # instrumentation
AND dword ptr [R14 + RCX], -66 
AND BL, BL 
AND RAX, 663703508 
AND RDI, 0b1111111111111 # instrumentation
SBB EBX, dword ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
LOCK AND byte ptr [R14 + RCX], DL 
AND RSI, 0b1111111111111 # instrumentation
MUL dword ptr [R14 + RSI] 
SBB AL, AL 
SETBE CL 
SETNB SIL 
JMP .bb_main.1 
.bb_main.1:
AND AL, CL 
AND RDX, 0b1111111111111 # instrumentation
MUL qword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
CMP RDX, qword ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
MUL qword ptr [R14 + RAX] 
ADD DIL, -121 # instrumentation
CMOVNB CX, SI 
SETS DL 
CMOVNZ RDI, RCX 
AND RAX, -1855284181 
XCHG SIL, BL 
JBE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
ADD SIL, -106 # instrumentation
ADC DL, AL 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RSI], 57 
XCHG DL, DL 
SETZ DIL 
AND RSI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RSI], 0b1000000000000000000000000000000 # instrumentation
BSR ECX, dword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
LOCK NOT qword ptr [R14 + RDX] 
CMP AL, -6 
DEC ESI 
AND RBX, 0b1111111111111 # instrumentation
INC byte ptr [R14 + RBX] 
CMOVNZ EDX, ESI 
AND RDX, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RDX], CL 
AND RAX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RAX], RDX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
