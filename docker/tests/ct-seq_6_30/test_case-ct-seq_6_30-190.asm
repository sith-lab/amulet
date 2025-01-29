.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CMP DIL, 66 
XCHG BL, AL 
AND RDX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RDX], 118 
JMP .bb_main.1 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
ADC CL, byte ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RAX], 108 
AND RBX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RBX], ECX 
CMOVNLE DI, SI 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RSI], DL 
AND RDX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RDX], RDX 
JMP .bb_main.2 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
LOCK NEG dword ptr [R14 + RDX] 
CMOVB EAX, EAX 
MOVSX EDI, BX 
XCHG BX, AX 
LOOP .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RDX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RDX], CX 
AND RSI, 0b1111111111111 # instrumentation
CMOVB ECX, dword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
SUB DL, byte ptr [R14 + RDX] 
JO .bb_main.4 
JMP .bb_main.5 
.bb_main.4:
ADD DIL, -113 # instrumentation
CMOVNLE DI, CX 
CMOVNL RDI, RAX 
SUB AL, 88 
AND RDI, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RDI] 
JMP .bb_main.5 
.bb_main.5:
AND RAX, 0b1111111111111 # instrumentation
CMOVP RDI, qword ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RBX], 68 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RBX], -22 
AND RAX, 0b1111111111111 # instrumentation
CMOVNS ECX, dword ptr [R14 + RAX] 
SUB AL, -72 
AND RAX, 0b1111111111111 # instrumentation
ADD ECX, dword ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
INC dword ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RSI], 1435147470 
OR CX, 0b1000000000000000 # instrumentation
BSF BX, CX 
MOVZX ECX, CL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
