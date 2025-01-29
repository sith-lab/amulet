.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
IMUL BX 
AND RSI, 0b1111111111111 # instrumentation
CMOVNLE DI, word ptr [R14 + RSI] 
SBB BX, BX 
OR EBX, 0b1000000000000000000000000000000 # instrumentation
BSR EBX, EBX 
SUB AL, -1 
CMP DL, AL 
SBB CL, 95 
AND RAX, 0b1111111111111 # instrumentation
CMOVBE DI, word ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RSI], DX 
SBB DX, AX 
JMP .bb_main.1 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
XOR RAX, qword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK OR word ptr [R14 + RSI], 126 
CMOVNS ESI, ECX 
SETNB DL 
CMP AL, 18 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RCX], DIL 
JMP .bb_main.2 
.bb_main.2:
ADD DIL, 99 # instrumentation
CMOVNS SI, DI 
AND RDX, 0b1111111111111 # instrumentation
CMP DL, byte ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
ADC EBX, dword ptr [R14 + RBX] 
MOV AL, 112 
SUB EDI, ECX 
MOV AL, DL 
CMOVB RBX, RAX 
SETNS BL 
AND RAX, 0b1111111111111 # instrumentation
AND CL, byte ptr [R14 + RAX] 
ADD EAX, 1970980075 
AND RDX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RDX], -28 
JNLE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RAX, 0b1111111111111 # instrumentation
CMOVLE SI, word ptr [R14 + RAX] 
CMOVNS CX, SI 
OR RCX, RDI 
SBB EDX, 78 
NOT RCX 
CMOVNB RCX, RCX 
AND RAX, 0b1111111111111 # instrumentation
MOV DL, byte ptr [R14 + RAX] 
MOV SIL, CL 
ADC SIL, 92 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RDI], -51 
AND RDX, 0b1111111111111 # instrumentation
SETB byte ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
SUB AL, byte ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
XADD byte ptr [R14 + RDI], DIL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
