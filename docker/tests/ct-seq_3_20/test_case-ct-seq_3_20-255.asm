.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
CMOVL RDX, qword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RBX], 84 
AND RAX, 0b1111111111111 # instrumentation
CMP CX, word ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNP EDX, dword ptr [R14 + RDX] 
JMP .bb_main.1 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RAX], -38 
AND RSI, 0b1111111111111 # instrumentation
LOCK INC word ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RSI], 0b1000000000000000000000000000000 # instrumentation
BSF EDX, dword ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
INC word ptr [R14 + RSI] 
CMOVS RDX, RBX 
CMP AL, -89 
JNB .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
MOVSX ESI, byte ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVO EDI, dword ptr [R14 + RCX] 
CMP AX, CX 
AND RSI, 0b1111111111111 # instrumentation
CMOVNP RDX, qword ptr [R14 + RSI] 
MOVSX EAX, AL 
CMOVNL AX, CX 
CMP DI, 24 
AND RBX, 0b1111111111111 # instrumentation
MOVZX RBX, word ptr [R14 + RBX] 
CMOVZ RDI, RBX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
