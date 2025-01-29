.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, -4 # instrumentation
CMOVL CX, SI 
CMOVO SI, DX 
AND RCX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RCX], DI 
SETNP BL 
CMOVNL EDX, EDI 
AND AL, -27 
AND RDI, 0b1111111111111 # instrumentation
MOVSX DI, byte ptr [R14 + RDI] 
MOVSX ECX, BL 
AND RSI, 0b1111111111111 # instrumentation
CMOVS ECX, dword ptr [R14 + RSI] 
CMOVL BX, BX 
CMOVNB DI, SI 
TEST EAX, -957262768 
CMOVNP ESI, EDI 
NOP  
JNLE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
ADD DIL, 111 
AND RSI, 0b1111111111111 # instrumentation
CMOVP DX, word ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNO RDI, qword ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
SUB RCX, qword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RBX], AX 
TEST RDI, RCX 
AND RBX, 0b1111111111111 # instrumentation
IMUL byte ptr [R14 + RBX] 
CBW  
MOVSX CX, DL 
BSWAP RSI 
MUL BL 
NOT BX 
OR EDI, 0b1000000000000000000000000000000 # instrumentation
BSR ESI, EDI 
AND RCX, 0b1111111111111 # instrumentation
CMPXCHG word ptr [R14 + RCX], AX 
JNLE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
CLD  # instrumentation
ADD SIL, 46 # instrumentation
CMOVP RDI, RCX 
TEST SI, -4077 
OR SIL, CL 
CMOVBE ESI, EDI 
CMOVNBE DX, SI 
AND RDX, 0b1111111111111 # instrumentation
XADD byte ptr [R14 + RDX], CL 
AND RDX, 0b1111111111111 # instrumentation
MUL dword ptr [R14 + RDX] 
ADD SIL, 89 # instrumentation
SETNP SIL 
AND RCX, 0b1111111111111 # instrumentation
MUL qword ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
CMPSB  
MOV RAX, -9067645489411820048 
CMP DL, DL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
