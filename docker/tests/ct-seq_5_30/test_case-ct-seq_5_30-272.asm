.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
CMOVNO EAX, dword ptr [R14 + RBX] 
CMOVS AX, CX 
AND RAX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RAX], AL 
AND RCX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RCX], RDX 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RDX], 114 
INC SIL 
AND RCX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RCX], DL 
AND RDI, 0b1111111111111 # instrumentation
CMOVNL EDX, dword ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
IMUL dword ptr [R14 + RSI] 
ADD SIL, -54 # instrumentation
JL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
CMOVNP RDI, qword ptr [R14 + RCX] 
CMOVNLE DI, SI 
AND RSI, 0b1111111111111 # instrumentation
ADD DIL, byte ptr [R14 + RSI] 
OR RSI, 0b1000000000000000000000000000000 # instrumentation
BSF RCX, RSI 
JMP .bb_main.2 
.bb_main.2:
ADD DIL, 2 # instrumentation
CMOVP ESI, EAX 
OR RAX, 0b1000000000000000000000000000000 # instrumentation
BSF RSI, RAX 
MOVZX DX, BL 
LOOPNE .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
IMUL EDI, EAX 
OR DL, 1 # instrumentation
AND RAX, 0b1111111111111 # instrumentation
LOCK INC word ptr [R14 + RAX] 
CMOVS BX, DI 
MOVSX ECX, AL 
SBB RAX, -56029575 
JMP .bb_main.4 
.bb_main.4:
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RSI], CL 
AND RSI, 0b1111111111111 # instrumentation
LOCK NEG word ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
MOV RSI, qword ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RSI], 93 
ADD BL, BL 
MOV EAX, 1183718113 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RDI], -91 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
