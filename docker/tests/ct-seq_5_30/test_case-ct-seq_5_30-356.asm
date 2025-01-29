.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
CMOVZ DX, word ptr [R14 + RSI] 
SUB EAX, 1325025272 
MOVZX EBX, CX 
CMOVNL DX, BX 
CMOVNO EAX, ECX 
MOVSX EBX, CL 
AND RDI, 0b1111111111111 # instrumentation
MOVZX CX, byte ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
CMOVS DI, word ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
MOVSX AX, byte ptr [R14 + RAX] 
JMP .bb_main.1 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RDI], -44 
SBB AL, AL 
AND RCX, 0b1111111111111 # instrumentation
MUL word ptr [R14 + RCX] 
BSWAP EBX 
CMP AX, -4421 
AND RAX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RAX], EBX 
JNL .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
MUL ESI 
IMUL BL 
IMUL RSI, RBX, 101 
AND RCX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RCX], DIL 
JNB .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
ADD SIL, -111 # instrumentation
SBB EAX, 1563559534 
ADD DI, -63 
AND RDI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDI], 0b1000000000000000 # instrumentation
BSF DI, word ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
IMUL EAX, dword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RDX] 
ADC ECX, 7 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RBX], -64 
ADD RSI, RSI 
AND RBX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RBX], CL 
JNL .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
ADD SIL, -16 # instrumentation
CMOVLE ESI, ECX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
