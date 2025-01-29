.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
INC SI 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RSI], RDX 
LOOP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RAX], RSI 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RBX], DL 
AND RDX, 0b1111111111111 # instrumentation
LOCK DEC qword ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVL DX, word ptr [R14 + RAX] 
SBB SIL, -122 
AND RBX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RBX], EBX 
OR EAX, 0b1000000000000000000000000000000 # instrumentation
BSR EAX, EAX 
MUL BX 
ADD DIL, 100 # instrumentation
JNLE .bb_main.2 
JMP .bb_main.5 
.bb_main.2:
ADD ESI, 5 
ADD AL, -101 
DEC DX 
JNB .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RDI, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RDI], RAX 
SUB AL, DL 
ADD RSI, RAX 
CMOVL EDI, EDI 
JNS .bb_main.4 
JMP .bb_main.5 
.bb_main.4:
ADD DIL, -85 # instrumentation
SBB CL, -111 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RBX], CL 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RDX], 10 
AND RCX, 0b1111111111111 # instrumentation
CMOVZ CX, word ptr [R14 + RCX] 
SBB RCX, RCX 
MOV CX, 14678 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RBX], 63 
AND RBX, 0b1111111111111 # instrumentation
MOVSX ESI, byte ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
SUB DIL, byte ptr [R14 + RDX] 
JMP .bb_main.5 
.bb_main.5:
AND RDX, 0b1111111111111 # instrumentation
CMOVNL AX, word ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK NEG qword ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
LOCK DEC qword ptr [R14 + RCX] 
NEG EDX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
