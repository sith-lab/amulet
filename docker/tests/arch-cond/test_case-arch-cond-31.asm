.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, -61 # instrumentation
CMOVNS RDX, RDI 
ADD DIL, -115 
OR EAX, -78 
AND RSI, 0b1111111111111 # instrumentation
LOCK XOR dword ptr [R14 + RSI], -67 
AND RSI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RSI], 1656442182 
AND RAX, 0b1111111111111 # instrumentation
LOCK NOT qword ptr [R14 + RAX] 
MOV DL, AL 
AND RCX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RCX], ESI 
JNL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
CMP EDX, -28 
SBB RAX, RAX 
AND RSI, 0b1111111111111 # instrumentation
CMOVNB RSI, qword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
AND DIL, byte ptr [R14 + RDI] 
OR RDX, 0b1000000000000000000000000000000 # instrumentation
BSR RDX, RDX 
TEST RDX, 950856587 
JMP .bb_main.2 
.bb_main.2:
ADD DIL, 6 # instrumentation
ADC AX, 30952 
AND EBX, ESI 
CMOVNP RDX, RAX 
ADC BL, DIL 
DEC AX 
SBB EDX, ESI 
AND RSI, 0b1111111111111 # instrumentation
LOCK AND qword ptr [R14 + RSI], RAX 
AND RBX, 0b1111111111111 # instrumentation
CMOVBE RSI, qword ptr [R14 + RBX] 
STD  
SBB AL, -13 
ADD BL, BL 
SETNBE DL 
AND RDI, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RDI], -34 
XOR RSI, RAX 
SETO CL 
AND RDI, 0b1111111111111 # instrumentation
CMOVNP DI, word ptr [R14 + RDI] 
JO .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
TEST EAX, EBX 
SBB RCX, 0 
ADD AL, 81 
AND RDX, 0b1111111111111 # instrumentation
TEST word ptr [R14 + RDX], -32382 
XCHG AX, DI 
SBB EAX, 1844616505 
OR RDX, 0b1000000000000000000000000000000 # instrumentation
BSF RAX, RDX 
AND RDX, 0b1111111111111 # instrumentation
LOCK AND byte ptr [R14 + RDX], AL 
AND RDX, 0b1111111111111 # instrumentation
IMUL RAX, qword ptr [R14 + RDX] 
OR SI, 15 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
