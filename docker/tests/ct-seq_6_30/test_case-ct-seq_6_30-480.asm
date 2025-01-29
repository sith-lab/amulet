.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, -54 # instrumentation
SBB DIL, 53 
AND RDI, 0b1111111111111 # instrumentation
AND RSI, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RSI] 
JMP .bb_main.1 
.bb_main.1:
ADD SIL, -14 # instrumentation
SBB DX, DI 
AND RSI, 0b1111111111111 # instrumentation
CMOVNLE EAX, dword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
MOVZX RCX, byte ptr [R14 + RCX] 
ADC EAX, -92880611 
JBE .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
XCHG RCX, RAX 
AND RDI, 0b1111111111111 # instrumentation
ADD SIL, -18 # instrumentation
MOV SIL, byte ptr [R14 + RDI] 
LAHF  
MOVZX EDX, SIL 
LOOPNE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
SUB EAX, EBX 
MOVZX EDI, CX 
AND RCX, 0b1111111111111 # instrumentation
LOCK NEG word ptr [R14 + RCX] 
BSWAP EBX 
SUB AL, DIL 
MUL RDX 
CMP DL, AL 
JMP .bb_main.4 
.bb_main.4:
ADD SIL, -84 # instrumentation
CMOVBE EDX, ECX 
AND RDX, 0b1111111111111 # instrumentation
AND RBX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RBX], CL 
CMOVNL ECX, ESI 
CMP EAX, 1886554501 
NEG DL 
CMOVNB RBX, RDX 
JNLE .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RDI], RCX 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RDI], -23 
AND RDX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RDX], ECX 
CMOVZ RAX, RAX 
AND RAX, 0b1111111111111 # instrumentation
INC word ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
