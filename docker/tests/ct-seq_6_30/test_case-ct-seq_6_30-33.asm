.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
DEC word ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
ADD DL, byte ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
MOVSX RCX, word ptr [R14 + RBX] 
JMP .bb_main.1 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
MOV BX, word ptr [R14 + RCX] 
IMUL AL 
AND RCX, 0b1111111111111 # instrumentation
MOVSX BX, byte ptr [R14 + RCX] 
MOVZX EAX, DIL 
JNLE .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RBX], -106 
CMOVL RBX, RAX 
AND RAX, 0b1111111111111 # instrumentation
CMOVO DX, word ptr [R14 + RAX] 
ADC RBX, RCX 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RAX], -12 
AND RAX, 0b1111111111111 # instrumentation
CMOVP RCX, qword ptr [R14 + RAX] 
CMP AX, DI 
ADD CL, BL 
JMP .bb_main.3 
.bb_main.3:
AND RBX, 0b1111111111111 # instrumentation
LOCK DEC dword ptr [R14 + RBX] 
MOVZX EDI, DI 
AND RAX, 0b1111111111111 # instrumentation
LOCK INC qword ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RDI], RCX 
CMOVO RCX, RBX 
JNLE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
IMUL ECX, EDI, 94 
IMUL DI 
ADD DIL, 11 # instrumentation
CMOVLE EAX, EAX 
LOOPE .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
AND RDI, 0b1111111111111 # instrumentation
MOVSX EAX, byte ptr [R14 + RDI] 
NEG BL 
LEA EDI, qword ptr [RAX + RCX + 6666] 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RBX], SIL 
AND RCX, 0b1111111111111 # instrumentation
SBB AL, byte ptr [R14 + RCX] 
CMOVNBE RAX, RCX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
