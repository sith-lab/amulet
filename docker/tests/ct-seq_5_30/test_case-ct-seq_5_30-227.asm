.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD EAX, 821253619 
AND RDX, 0b1111111111111 # instrumentation
ADC AL, byte ptr [R14 + RDX] 
ADD DX, BX 
CMOVNBE RBX, RDX 
NEG SI 
AND RDX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RDX], EDX 
XCHG BX, AX 
AND RDX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RDX], AL 
AND RAX, 0b1111111111111 # instrumentation
LOCK DEC byte ptr [R14 + RAX] 
CMOVNLE AX, BX 
JMP .bb_main.1 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RDX], -101 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RBX], ESI 
SBB AL, DL 
MOVZX EDI, SIL 
JNZ .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
CMOVL RDI, qword ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RBX], AX 
MOVSX EDX, SI 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RCX], -76 
MUL DIL 
ADD ESI, 58 
AND RBX, 0b1111111111111 # instrumentation
CMOVNO RDI, qword ptr [R14 + RBX] 
JMP .bb_main.3 
.bb_main.3:
AND RAX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RAX], -11 
ADD DX, DI 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RDI], RDX 
CMP EAX, ECX 
AND RBX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RBX], 10 
AND RAX, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RAX], RSI 
JO .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RDX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RDX], AL 
CMOVNB RAX, RCX 
ADC ESI, EDX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
