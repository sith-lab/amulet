.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
LEA RAX, qword ptr [RBX + RDI] 
AND RDX, 0b1111111111111 # instrumentation
MUL dword ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVO ECX, dword ptr [R14 + RCX] 
SBB RDX, -49 
CMOVNLE SI, BX 
ADD AL, -12 
SBB BL, CL 
SETBE DIL 
IMUL DL 
ADD SIL, 116 # instrumentation
CMOVNP EAX, ESI 
SETNO BL 
CMP CX, -26 
TEST AL, SIL 
AND RDX, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RDX], DL 
MUL DIL 
DEC DL 
CMOVZ RSI, RSI 
LOOPNE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
MOVZX RDX, DX 
MOVSX EDI, DL 
AND RDX, 0b1111111111111 # instrumentation
CMOVO RDI, qword ptr [R14 + RDX] 
IMUL RBX 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RDI], BX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNO RSI, qword ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
NOT dword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVP RSI, qword ptr [R14 + RDX] 
XOR BX, SI 
AND RCX, 0b1111111111111 # instrumentation
LOCK CMPXCHG byte ptr [R14 + RCX], CL 
SBB EBX, 13 
XADD BX, BX 
SETNL BL 
OR RAX, 774404968 
CMOVNZ BX, SI 
AND RAX, 0b1111111111111 # instrumentation
AND qword ptr [R14 + RAX], RBX 
JNLE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
LOCK DEC dword ptr [R14 + RCX] 
ADD CL, 54 
CMPXCHG EBX, ECX 
CMOVZ CX, BX 
AND RSI, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RSI], DIL 
MOVSX ECX, BX 
CMOVBE EDI, EDI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
