.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, 88 # instrumentation
CMOVNO AX, SI 
AND RDX, 0b1111111111111 # instrumentation
LOCK NEG word ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVLE RDX, qword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
SBB RDI, qword ptr [R14 + RBX] 
MOVSX AX, DL 
AND RAX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RAX], 123 
AND RCX, 0b1111111111111 # instrumentation
IMUL ECX, dword ptr [R14 + RCX] 
SUB EDI, EBX 
AND RBX, 0b1111111111111 # instrumentation
CMOVZ CX, word ptr [R14 + RBX] 
CMOVNLE RBX, RBX 
AND RCX, 0b1111111111111 # instrumentation
SBB BL, byte ptr [R14 + RCX] 
IMUL AL 
CMP RDX, RCX 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RDX], 110 
INC EDX 
SUB AX, SI 
BSWAP ESI 
INC RDX 
AND RBX, 0b1111111111111 # instrumentation
NEG dword ptr [R14 + RBX] 
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RSI], -3970 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RDI], RAX 
CMP EAX, -7371823 
AND RDI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSR RSI, qword ptr [R14 + RDI] 
ADD DIL, 14 # instrumentation
CMOVLE CX, DI 
AND RSI, 0b1111111111111 # instrumentation
IMUL qword ptr [R14 + RSI] 
SBB RDI, 30 
AND RAX, 0b1111111111111 # instrumentation
ADD RAX, qword ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
MOVZX EDX, byte ptr [R14 + RBX] 
SBB EAX, EBX 
AND RCX, 0b1111111111111 # instrumentation
MOVZX RAX, byte ptr [R14 + RCX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
