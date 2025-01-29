.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MOVZX DI, AL 
MOV CX, 11026 
CMP CX, DI 
DEC SIL 
MOVZX EDI, AL 
AND RAX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RAX], ESI 
CMOVNL ECX, ESI 
INC RDX 
AND RAX, 0b1111111111111 # instrumentation
SBB AL, byte ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RAX], 49 
AND RCX, 0b1111111111111 # instrumentation
MOVZX RAX, byte ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RDX], ECX 
AND RCX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RCX], 0b1000000000000000000000000000000 # instrumentation
BSR RBX, qword ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RSI], ESI 
AND RCX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RCX], RCX 
IMUL RSI 
IMUL RSI 
AND RBX, 0b1111111111111 # instrumentation
CMOVS EAX, dword ptr [R14 + RBX] 
XCHG RCX, RAX 
AND RAX, 0b1111111111111 # instrumentation
CMOVL ECX, dword ptr [R14 + RAX] 
SUB SIL, -3 
AND RDX, 0b1111111111111 # instrumentation
MOV DL, byte ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNS ESI, dword ptr [R14 + RAX] 
CMP SIL, -2 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RDI], 25 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
