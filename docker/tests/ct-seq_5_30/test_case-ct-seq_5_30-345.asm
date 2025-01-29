.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
XCHG CL, DL 
SUB RDX, -20 
AND RAX, 0b1111111111111 # instrumentation
CMOVP BX, word ptr [R14 + RAX] 
ADC BX, BX 
AND RAX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RAX], RAX 
MOV RAX, RDX 
SBB RSI, RCX 
SUB SIL, 117 
JNBE .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
SUB RSI, qword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RAX] 
CMOVNS DX, AX 
XCHG EDX, EAX 
CMP DIL, DL 
MOVZX RBX, DX 
LOOPNE .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
MOVSX EAX, AL 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RDX], 110 
ADC BX, 23 
AND RCX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RCX], -66 
AND RAX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RAX], 0b1000000000000000000000000000000 # instrumentation
BSR RCX, qword ptr [R14 + RAX] 
LOOPE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
ADD DIL, -52 # instrumentation
SBB DL, -90 
AND RDI, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RDI], EBX 
DEC CL 
LEA CX, qword ptr [RDX + RSI] 
XCHG CL, BL 
AND RDI, 0b1111111111111 # instrumentation
CMOVB DX, word ptr [R14 + RDI] 
CMOVNP ECX, ECX 
JO .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RDX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDX], -15980 
CMOVZ CX, DX 
AND RAX, 0b1111111111111 # instrumentation
DEC dword ptr [R14 + RAX] 
CMOVS RAX, RBX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
