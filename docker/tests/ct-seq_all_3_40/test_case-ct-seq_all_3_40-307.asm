.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CMPXCHG EBX, EBX 
ADC DIL, -34 
CMOVNS RBX, RDX 
AND RCX, 0b1111111111111 # instrumentation
AND dword ptr [R14 + RCX], EDI 
TEST AX, -4902 
AND RDX, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RDX], 1127412399 
ADD DL, AL 
CMOVO CX, BX 
XOR RDI, -31 
AND RBX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RBX], DX 
AND RDX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RDX], EAX 
CMP DI, SI 
AND EAX, 229136333 
ADD BL, CL 
SUB SIL, DIL 
AND RBX, 0b1111111111111 # instrumentation
CMPXCHG word ptr [R14 + RBX], DX 
MOVSX RAX, DI 
BSWAP EDI 
JNB .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
AND byte ptr [R14 + RBX], DIL 
MOV AL, AL 
AND RDI, 0b1111111111111 # instrumentation
CMOVP RSI, qword ptr [R14 + RDI] 
SBB RDI, RCX 
AND EAX, -2021971325 
AND RAX, -736561108 
NOT DX 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RDX], 78 
AND RDX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RDX], -83 
TEST EDI, 689141213 
JMP .bb_main.2 
.bb_main.2:
XADD AL, AL 
ADD DIL, 9 
SUB BL, CL 
CMOVB CX, SI 
OR AL, 13 
TEST RAX, 718026710 
AND RAX, 0b1111111111111 # instrumentation
AND byte ptr [R14 + RAX], CL 
IMUL SI, DX, 30 
SUB CX, BX 
SUB CL, AL 
AND RDX, 0b1111111111111 # instrumentation
SETLE byte ptr [R14 + RDX] 
IMUL EBX, EBX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
