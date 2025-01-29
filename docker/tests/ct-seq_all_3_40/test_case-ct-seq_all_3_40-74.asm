.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
ADD BL, byte ptr [R14 + RDI] 
CMP DI, CX 
AND RSI, 0b1111111111111 # instrumentation
IMUL dword ptr [R14 + RSI] 
ADD DIL, 103 # instrumentation
SETZ AL 
TEST BX, -1451 
OR SIL, 19 
XCHG CL, AL 
SBB EAX, 2051704697 
OR RSI, RAX 
INC RCX 
AND RBX, 0b1111111111111 # instrumentation
LOCK XADD word ptr [R14 + RBX], AX 
MUL BX 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RDI], SI 
SETNB AL 
JMP .bb_main.1 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
SBB DL, byte ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RBX], BL 
SETB SIL 
NOT DL 
ADD DIL, 62 
OR RAX, -1722780631 
CMOVNBE RSI, RAX 
MOVSX EDI, DL 
CMOVB RCX, RDI 
AND RDI, 0b1111111111111 # instrumentation
LOCK AND byte ptr [R14 + RDI], AL 
SETBE AL 
JZ .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
AND CX, word ptr [R14 + RBX] 
CMP EBX, ESI 
ADD RDI, RDX 
AND RBX, 0b1111111111111 # instrumentation
SBB SI, word ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVO BX, word ptr [R14 + RDX] 
XOR BX, -95 
AND AL, -97 
SUB RDI, -8 
AND RCX, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RCX], BL 
AND RDI, 0b1111111111111 # instrumentation
SUB AL, byte ptr [R14 + RDI] 
OR SIL, SIL 
XCHG DI, SI 
AND RDI, 0b1111111111111 # instrumentation
LOCK CMPXCHG word ptr [R14 + RDI], AX 
SUB RSI, RAX 
TEST DL, DL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
