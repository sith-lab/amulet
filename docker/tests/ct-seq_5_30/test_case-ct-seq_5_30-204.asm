.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, -112 # instrumentation
CMOVNP ECX, ESI 
CLC  
ADD AL, -74 
JNS .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RAX], RAX 
AND RBX, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RBX], EBX 
SBB DI, SI 
CMOVLE RDX, RDI 
ADC EDI, -42 
INC ESI 
JNL .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
CMP RAX, -535701699 
AND RAX, 0b1111111111111 # instrumentation
LOCK NEG word ptr [R14 + RAX] 
CMOVBE RDI, RDI 
MUL ECX 
AND RAX, 0b1111111111111 # instrumentation
IMUL word ptr [R14 + RAX] 
SBB DX, 42 
JMP .bb_main.3 
.bb_main.3:
XCHG SIL, BL 
CMP RAX, -2071884594 
AND RDX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDX], 0b1000000000000000000000000000000 # instrumentation
BSR RSI, qword ptr [R14 + RDX] 
NEG CX 
AND RCX, 0b1111111111111 # instrumentation
CMOVNL DX, word ptr [R14 + RCX] 
CMP AL, 116 
JNLE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RDX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDX], 0b1000000000000000000000000000000 # instrumentation
BSF EBX, dword ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RBX], 1928745422 
MUL ESI 
CLC  
ADC RAX, 59 
AND RDI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDI], DL 
AND RDI, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RDI] 
OR EDX, 0b1000000000000000000000000000000 # instrumentation
BSR EDI, EDX 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RCX], ECX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
