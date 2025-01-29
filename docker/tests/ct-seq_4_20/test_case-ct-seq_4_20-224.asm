.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
LOCK INC qword ptr [R14 + RDI] 
XCHG BL, DL 
CWD  
AND RCX, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RBX], -69 
JP .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
ADD SIL, 73 # instrumentation
CMOVNO BX, DX 
AND RDX, 0b1111111111111 # instrumentation
CMOVZ RDX, qword ptr [R14 + RDX] 
CMOVP ESI, EBX 
AND RDX, 0b1111111111111 # instrumentation
SUB DL, byte ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
SBB SI, word ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVL EBX, dword ptr [R14 + RCX] 
JMP .bb_main.2 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
CMOVS EDX, dword ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RBX], 0b1000000000000000 # instrumentation
BSR CX, word ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RSI], AL 
IMUL EBX 
AND RBX, 0b1111111111111 # instrumentation
CMOVB DI, word ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
NEG dword ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RDI], RCX 
AND RAX, 0b1111111111111 # instrumentation
CMOVB ESI, dword ptr [R14 + RAX] 
JMP .bb_main.3 
.bb_main.3:
AND RAX, 0b1111111111111 # instrumentation
LOCK NEG dword ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
