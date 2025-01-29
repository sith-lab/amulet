.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
CMOVZ EDX, dword ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
CMP DI, word ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RAX], -97 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RBX], ESI 
ADD BX, BX 
AND RBX, 0b1111111111111 # instrumentation
CMOVNO BX, word ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
CMP DIL, byte ptr [R14 + RBX] 
JL .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
ADD DIL, 46 # instrumentation
SBB RAX, -32 
AND RSI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RSI], CL 
SUB DI, 100 
AND RDX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RDX], 86 
AND RCX, 0b1111111111111 # instrumentation
CMOVNLE ECX, dword ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK DEC dword ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
IMUL RSI, qword ptr [R14 + RCX] 
IMUL EDI, EBX, -8 
SUB AX, -1085 
AND RBX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RBX], 28819 
JMP .bb_main.2 
.bb_main.2:
ADD SIL, -103 # instrumentation
JNB .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
ADD DIL, -3 # instrumentation
CMOVNBE RSI, RBX 
CMP EAX, 123483725 
AND RSI, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
IMUL qword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDI], DIL 
JZ .bb_main.4 
JMP .bb_main.5 
.bb_main.4:
AND RAX, 0b1111111111111 # instrumentation
MOVZX RCX, byte ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RSI], -55 
XCHG BX, DX 
AND RAX, 0b1111111111111 # instrumentation
CMOVNP DX, word ptr [R14 + RAX] 
XCHG DL, DL 
CMP EAX, ESI 
JMP .bb_main.5 
.bb_main.5:
OR RAX, 0b1000000000000000000000000000000 # instrumentation
BSF RCX, RAX 
ADD DIL, 18 # instrumentation
CMOVL BX, DX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
