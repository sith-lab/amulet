.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
SUB RDX, RDI 
AND RBX, 0b1111111111111 # instrumentation
IMUL ECX, dword ptr [R14 + RBX], -128 
AND RSI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RSI], AL 
MOVZX RDI, CL 
CMOVP EDI, EDX 
AND RBX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RBX], 32 
JNL .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RCX], RSI 
AND RAX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RAX], 14 
AND RSI, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RSI], ESI 
AND RAX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RAX], 1294154140 
AND RCX, 0b1111111111111 # instrumentation
DEC word ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVZ DI, word ptr [R14 + RSI] 
JNP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
ADD ESI, EBX 
OR BX, 0b1000000000000000 # instrumentation
BSF DI, BX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNL EBX, dword ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RAX], 8 
AND RSI, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RSI] 
CMOVS RDX, RCX 
AND RDI, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RDI], BL 
AND RCX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RCX], CL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
