.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
CMOVZ RAX, qword ptr [R14 + RBX] 
CMOVO AX, DX 
LEA RDI, qword ptr [RDX] 
ADD DI, DI 
DEC SIL 
AND RSI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RSI], 0b1000000000000000000000000000000 # instrumentation
BSR RAX, qword ptr [R14 + RSI] 
JMP .bb_main.1 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RAX], BX 
AND RDI, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RDI], -67 
MOVZX EBX, BX 
AND RCX, 0b1111111111111 # instrumentation
CMOVS AX, word ptr [R14 + RCX] 
JNBE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RDI], BX 
AND RDX, 0b1111111111111 # instrumentation
MOV CL, byte ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNS ECX, dword ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
MOVSX RSI, byte ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDI], CL 
CLC  
MOVSX RBX, DX 
JNO .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RCX, 0b1111111111111 # instrumentation
LOCK DEC dword ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
MOVSX RSI, word ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RAX], RDI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
