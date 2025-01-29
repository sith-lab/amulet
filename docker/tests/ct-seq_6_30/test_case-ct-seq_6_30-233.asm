.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RDX], 118 
CMOVBE RAX, RAX 
JMP .bb_main.1 
.bb_main.1:
ADD SIL, -106 # instrumentation
CMOVP RBX, RCX 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RBX], -41 
CMOVBE DX, DX 
AND RBX, 0b1111111111111 # instrumentation
MOVSX RCX, byte ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDI], DL 
MOVZX RSI, DX 
JMP .bb_main.2 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
CMP EBX, dword ptr [R14 + RBX] 
SUB AL, -25 
CMOVZ CX, SI 
JNP .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
ADD DIL, 85 # instrumentation
SBB EAX, 806496788 
AND RDI, 0b1111111111111 # instrumentation
CMP DL, byte ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RAX], -17 
AND RAX, 0b1111111111111 # instrumentation
CMOVNP SI, word ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
DEC word ptr [R14 + RDX] 
JMP .bb_main.4 
.bb_main.4:
OR AX, 0b1000000000000000 # instrumentation
BSF AX, AX 
MOVSX RAX, DL 
MUL DL 
ADD DIL, 68 # instrumentation
MOV EDX, -1452318053 
CMOVNLE EDX, EAX 
SBB DIL, -78 
JMP .bb_main.5 
.bb_main.5:
AND RAX, 0b1111111111111 # instrumentation
CMOVNP DI, word ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RBX], 0b1000000000000000000000000000000 # instrumentation
BSF ESI, dword ptr [R14 + RBX] 
ADD SIL, -69 # instrumentation
CMOVL ESI, EDX 
AND RBX, 0b1111111111111 # instrumentation
CMP DX, word ptr [R14 + RBX] 
ADC AL, -25 
AND RBX, 0b1111111111111 # instrumentation
CMOVS EBX, dword ptr [R14 + RBX] 
IMUL EDI, ESI, -80 
AND RSI, 0b1111111111111 # instrumentation
CMOVNS RAX, qword ptr [R14 + RSI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
