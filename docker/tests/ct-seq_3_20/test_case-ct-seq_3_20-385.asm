.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RBX], 57 
AND RCX, 0b1111111111111 # instrumentation
CMOVNL AX, word ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RBX], AX 
AND RAX, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RAX] 
JNZ .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
CMOVNP RDX, qword ptr [R14 + RDX] 
CMOVNZ RBX, RCX 
AND RDX, 0b1111111111111 # instrumentation
CMOVBE EDI, dword ptr [R14 + RDX] 
CMOVNL CX, DX 
AND RCX, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RCX], RDI 
OR EAX, 0b1000000000000000000000000000000 # instrumentation
BSF EBX, EAX 
AND RDI, 0b1111111111111 # instrumentation
MUL qword ptr [R14 + RDI] 
ADD SIL, -127 # instrumentation
JNL .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RDX], -106 
AND RDI, 0b1111111111111 # instrumentation
CMOVNP EDI, dword ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RCX], 105 
SUB AX, 4208 
ADC EAX, -1111057496 
SBB DL, -52 
AND RCX, 0b1111111111111 # instrumentation
SUB CL, byte ptr [R14 + RCX] 
SUB EAX, -27 
AND RDI, 0b1111111111111 # instrumentation
CMOVB RSI, qword ptr [R14 + RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
