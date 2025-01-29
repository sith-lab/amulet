.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
ADD DIL, -4 # instrumentation
CMOVNLE DI, CX 
SETNB AL 
AND RDI, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RDI], RCX 
NOT ECX 
AND RDI, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RDI], -47 
CMOVNS RBX, RBX 
INC AX 
AND RCX, 0b1111111111111 # instrumentation
CMOVNO RSI, qword ptr [R14 + RCX] 
DEC DIL 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
STOSD  
AND RDI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDI], BL 
AND RBX, 0b1111111111111 # instrumentation
AND qword ptr [R14 + RBX], 61 
AND RAX, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
SUB EDI, dword ptr [R14 + RAX] 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD SIL, -20 # instrumentation
SETNB DIL 
OR RAX, -9193945 
AND ECX, EDI 
AND RDX, 0b1111111111111 # instrumentation
LOCK OR qword ptr [R14 + RDX], RSI 
NEG DX 
AND RDI, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RDI], SI 
AND RBX, 0b1111111111111 # instrumentation
LOCK INC word ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
AND word ptr [R14 + RAX], -83 
JMP .bb_main.2 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
XOR SIL, byte ptr [R14 + RBX] 
MOVSX RCX, DIL 
MOV AL, CL 
AND RDI, 0b1111111111111 # instrumentation
SBB SIL, byte ptr [R14 + RDI] 
CMP RAX, -1782268480 
AND RSI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RSI], 0b1000000000000000000000000000000 # instrumentation
BSR RBX, qword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
MOVZX EAX, byte ptr [R14 + RDX] 
SETNP AL 
IMUL RDX, RSI, -52 
DEC ESI 
SUB EAX, -1368437415 
CMP SI, -117 
CMOVL RCX, RCX 
OR ESI, EDX 
NOP  
AND RAX, 0b1111111111111 # instrumentation
XADD byte ptr [R14 + RAX], SIL 
CLC  
AND RDI, 0b1111111111111 # instrumentation
LOCK CMPXCHG dword ptr [R14 + RDI], ESI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
