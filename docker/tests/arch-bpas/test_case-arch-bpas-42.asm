.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
ADD DIL, -71 # instrumentation
CMOVLE CX, AX 
CMPXCHG EAX, EAX 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
STOSB  
OR AL, -3 
CMOVZ RSI, RBX 
TEST ESI, -1007930066 
AND RSI, 0b1111111111111 # instrumentation
NOT byte ptr [R14 + RSI] 
SETNBE CL 
JMP .bb_main.1 
.bb_main.1:
XOR RAX, -414083737 
SETS SIL 
CMOVLE RBX, RSI 
DEC ESI 
OR EAX, 0b1000000000000000000000000000000 # instrumentation
BSR EBX, EAX 
ADD RAX, -2080244639 
AND RDX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RDX], 44 
XADD CL, DL 
AND RBX, 0b1111111111111 # instrumentation
CMOVBE DI, word ptr [R14 + RBX] 
CMP EDX, 121 
SUB DL, SIL 
JMP .bb_main.2 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
CMOVS RAX, qword ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVL EDX, dword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RBX], 20 
AND RCX, 0b1111111111111 # instrumentation
IMUL DX, word ptr [R14 + RCX] 
INC AL 
MUL CL 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RCX], EAX 
JNBE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RDX, 0b1111111111111 # instrumentation
CMOVNL DX, word ptr [R14 + RDX] 
SETNBE CL 
IMUL RCX 
ADD SIL, -18 # instrumentation
CMOVL DX, DX 
IMUL BL 
MUL AL 
OR RSI, -115 
SUB EAX, 478111521 
SUB ECX, ECX 
AND RAX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RAX], ECX 
AND RDX, 0b1111111111111 # instrumentation
XOR dword ptr [R14 + RDX], -110 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RAX], RSI 
AND RCX, 0b1111111111111 # instrumentation
AND CX, word ptr [R14 + RCX] 
SUB AX, 20853 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
