.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
AND RDX, 0b1111111111111 # instrumentation
SUB EDI, dword ptr [R14 + RDX] 
MUL EAX 
IMUL DI, CX, -17 
ADD SIL, -94 # instrumentation
XCHG EAX, ECX 
CMOVLE EAX, EDX 
CMP AX, 27922 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
STOSW  
CMP DIL, SIL 
ADC RDX, RAX 
MOVSX EBX, DL 
IMUL ESI 
AND RBX, 0b1111111111111 # instrumentation
CMOVZ DX, word ptr [R14 + RBX] 
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
CLD  # instrumentation
AND RDX, 0b1111111111111 # instrumentation
MOV BL, byte ptr [R14 + RDX] 
IMUL AX, BX, -100 
AND RBX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RBX], DIL 
SBB RAX, 1942660411 
CMP EAX, -784957855 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
CMPSD  
MOV DL, SIL 
OR RCX, 0b1000000000000000000000000000000 # instrumentation
BSR RDI, RCX 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RDX], -83 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RBX], -114 
AND RDX, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RDX], RDX 
AND RDI, 0b1111111111111 # instrumentation
CMOVS DI, word ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNP EDI, dword ptr [R14 + RDI] 
CMOVL RSI, RCX 
MOV AL, -16 
AND RCX, 0b1111111111111 # instrumentation
LOCK NEG dword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
SBB AL, byte ptr [R14 + RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
