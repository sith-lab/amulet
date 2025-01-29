.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
SBB RAX, qword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RAX], 108 
AND RDX, 0b1111111111111 # instrumentation
CMOVS RAX, qword ptr [R14 + RDX] 
OR ECX, 0b1000000000000000000000000000000 # instrumentation
BSR ECX, ECX 
NEG DIL 
AND RDX, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RDX], EBX 
SUB RSI, RDX 
AND RAX, 0b1111111111111 # instrumentation
LOCK DEC byte ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RDX], 58 
IMUL EDX, EDX, 38 
AND RDI, 0b1111111111111 # instrumentation
DEC qword ptr [R14 + RDI] 
CMP EAX, -1702124017 
OR RSI, 0b1000000000000000000000000000000 # instrumentation
BSF RBX, RSI 
AND RAX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RAX], 28095 
AND RSI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RSI], EDX 
CMOVNL RAX, RAX 
AND RCX, 0b1111111111111 # instrumentation
CMOVP EDI, dword ptr [R14 + RCX] 
INC CL 
AND RAX, 0b1111111111111 # instrumentation
CMOVNP RCX, qword ptr [R14 + RAX] 
CMOVS RCX, RSI 
AND RCX, 0b1111111111111 # instrumentation
CMOVS DX, word ptr [R14 + RCX] 
IMUL AX, DX 
SBB AX, -13983 
MOV AX, -3297 
CMOVNS EDX, EBX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
