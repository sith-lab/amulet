.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
CMOVNZ RCX, qword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RDI], -107 
AND RCX, 0b1111111111111 # instrumentation
LOCK DEC byte ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
SUB DX, word ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNL EDX, dword ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDI], CL 
AND RDX, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RDX], RSI 
JNBE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
XCHG CL, BL 
INC DIL 
AND RDX, 0b1111111111111 # instrumentation
CMOVO RBX, qword ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVZ DI, word ptr [R14 + RAX] 
MOV CX, -25602 
JNO .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RBX], SI 
AND RDI, 0b1111111111111 # instrumentation
SUB CX, word ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RAX], RCX 
AND RDX, 0b1111111111111 # instrumentation
SUB EAX, dword ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RCX], RAX 
AND RDX, 0b1111111111111 # instrumentation
SBB DL, byte ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDI], -19502626 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RBX], -24 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
