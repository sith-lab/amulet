.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RCX], -4 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RBX], -13 
CMP RDI, 107 
ADD EDX, ECX 
MOV RSI, 1425453040431418783 
AND RDI, 0b1111111111111 # instrumentation
LOCK DEC word ptr [R14 + RDI] 
IMUL RCX 
AND RDI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDI], CL 
DEC DL 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RCX], 7 
CMOVB EDI, EBX 
AND RBX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RBX], EAX 
NEG DL 
AND RSI, 0b1111111111111 # instrumentation
CMOVP RSI, qword ptr [R14 + RSI] 
IMUL RBX, RBX 
AND RDX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RDX], -104 
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RSI], AL 
AND RSI, 0b1111111111111 # instrumentation
SBB EDI, dword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
DEC word ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
SUB BL, byte ptr [R14 + RDX] 
CMOVZ RAX, RAX 
AND RDX, 0b1111111111111 # instrumentation
DEC dword ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RCX], RSI 
DEC CL 
AND RDI, 0b1111111111111 # instrumentation
CMOVL DI, word ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RBX], -115 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RDX], DX 
OR RAX, 0b1000000000000000000000000000000 # instrumentation
BSR RDI, RAX 
DEC SIL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
