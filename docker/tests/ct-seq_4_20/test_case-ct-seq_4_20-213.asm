.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
CMP RBX, qword ptr [R14 + RDX] 
JMP .bb_main.1 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RCX], EAX 
MOVSX RBX, CX 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RBX], -13 
AND RAX, 0b1111111111111 # instrumentation
LOCK DEC byte ptr [R14 + RAX] 
JNO .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
MOV EAX, -978001778 
AND RDI, 0b1111111111111 # instrumentation
CMOVNO AX, word ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDX], 0b1000000000000000 # instrumentation
BSF DI, word ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
SBB EAX, dword ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNZ DX, word ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RSI], -52 
XCHG ECX, EAX 
ADC EAX, -1126886543 
AND RAX, 0b1111111111111 # instrumentation
SBB DI, word ptr [R14 + RAX] 
JNLE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RDX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RDX], -107 
AND RBX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RBX], 90 
AND RBX, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RBX], RDI 
AND RDX, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNB ESI, dword ptr [R14 + RCX] 
CMOVP DI, DX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
