.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD BL, CL 
AND RCX, 0b1111111111111 # instrumentation
CMOVS DI, word ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
ADC DL, byte ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNLE DI, word ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RCX], BL 
NEG CL 
AND RBX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RBX], ECX 
CMOVZ EBX, EDX 
TEST EAX, 2059163269 
XOR AL, 41 
MOVSX RAX, DL 
MUL AL 
AND RDI, 0b1111111111111 # instrumentation
LOCK CMPXCHG word ptr [R14 + RDI], DI 
JLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
INC AL 
XOR BL, BL 
AND RBX, 0b1111111111111 # instrumentation
SUB RSI, qword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVLE EBX, dword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
CMOVBE DX, word ptr [R14 + RBX] 
ADD AL, -118 
OR EAX, -488996651 
AND RDI, 0b1111111111111 # instrumentation
CMOVNLE EAX, dword ptr [R14 + RDI] 
TEST CL, 81 
JMP .bb_main.2 
.bb_main.2:
DEC EAX 
AND EDI, ECX 
AND AX, 6696 
AND RDX, 0b1111111111111 # instrumentation
CMP CL, byte ptr [R14 + RDX] 
XADD CX, DX 
CMOVL CX, AX 
NEG DIL 
SETP DL 
AND RAX, 0b1111111111111 # instrumentation
ADD EAX, dword ptr [R14 + RAX] 
SETNO CL 
AND RSI, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RSI], AX 
AND RAX, 0b1111111111111 # instrumentation
MOVSX EDX, byte ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RBX], DX 
AND RSI, RDX 
CMP EDI, EBX 
AND RCX, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RCX], DL 
CDQ  
AND RDX, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RDX], DL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
