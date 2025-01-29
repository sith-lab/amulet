.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, 28 # instrumentation
CMOVZ RDX, RAX 
AND RBX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RBX], 84 
AND RBX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RBX], EAX 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RCX], -30 
AND RBX, 0b1111111111111 # instrumentation
CMOVNBE AX, word ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
ADC ESI, dword ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RAX], ESI 
JLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RBX], AX 
AND RSI, 0b1111111111111 # instrumentation
CMOVNLE DX, word ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
SBB AL, byte ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RAX], -56597944 
AND RCX, 0b1111111111111 # instrumentation
CMOVNL ESI, dword ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVS EAX, dword ptr [R14 + RAX] 
XCHG CL, CL 
AND RCX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RCX], AX 
AND RDX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDX], 0b1000000000000000000000000000000 # instrumentation
BSF RSI, qword ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RBX], AL 
XCHG BL, CL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
