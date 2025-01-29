.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, -113 # instrumentation
CMOVNS ESI, EAX 
AND RAX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RAX], 0b1000000000000000000000000000000 # instrumentation
BSR RAX, qword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
MOV BL, byte ptr [R14 + RDX] 
ADC EDI, EDI 
SBB AL, -35 
BSWAP EBX 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RCX], DL 
JNO .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RBX], EBX 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RSI], SI 
ADD SI, -42 
AND RAX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RAX], DI 
SBB SIL, BL 
JMP .bb_main.2 
.bb_main.2:
INC CX 
OR AX, 0b1000000000000000 # instrumentation
BSR CX, AX 
IMUL CL 
JB .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RSI], -80 
AND RDX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDX], BL 
CMOVBE RDI, RSI 
MOV RCX, RCX 
AND RBX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RBX], -115 
AND RSI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RSI], 0b1000000000000000 # instrumentation
BSR SI, word ptr [R14 + RSI] 
CMP DIL, CL 
AND RCX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RCX], 0b1000000000000000000000000000000 # instrumentation
BSR RBX, qword ptr [R14 + RCX] 
XCHG EDX, EAX 
JMP .bb_main.4 
.bb_main.4:
AND RDI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDI], -990081048 
IMUL AL 
ADD DIL, -12 # instrumentation
JNLE .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
CWD  
XCHG DL, BL 
AND RSI, 0b1111111111111 # instrumentation
SUB AL, byte ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
ADD CX, word ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
