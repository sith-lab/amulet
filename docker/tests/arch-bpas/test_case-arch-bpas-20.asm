.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, -106 # instrumentation
CMOVP RDX, RSI 
AND RSI, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RSI], DL 
ADD AL, 32 
SBB RAX, -1443536518 
CMPXCHG AL, DL 
CMP DL, -118 
IMUL RSI 
JMP .bb_main.1 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
LOCK NEG byte ptr [R14 + RDX] 
SETNBE BL 
AND RDX, 0b1111111111111 # instrumentation
XOR RBX, qword ptr [R14 + RDX] 
CMOVNS RAX, RAX 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RBX], RDX 
SBB EAX, -353593573 
AND RSI, 0b1111111111111 # instrumentation
SETNS byte ptr [R14 + RSI] 
MUL BL 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RAX], RSI 
JNL .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
ADD DI, word ptr [R14 + RDI] 
XCHG DIL, DIL 
SBB EBX, ECX 
MOVZX RAX, AX 
AND RDI, 0b1111111111111 # instrumentation
MOVSX DI, byte ptr [R14 + RDI] 
CMOVO AX, SI 
SETS DL 
AND RSI, 0b1111111111111 # instrumentation
LOCK XOR qword ptr [R14 + RSI], 127 
AND RSI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RSI], 0b1000000000000000000000000000000 # instrumentation
BSF RBX, qword ptr [R14 + RSI] 
ADD SIL, 64 # instrumentation
JO .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
ADD DIL, -104 # instrumentation
CMOVNBE SI, SI 
AND RAX, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RAX] 
CMOVNBE AX, DX 
AND RSI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RSI], -1427862732 
TEST AL, 71 
AND RSI, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RSI], DIL 
CMPXCHG CL, AL 
AND RBX, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RBX], -68 
LOOPE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
ADD SIL, 33 # instrumentation
CMOVNL DI, AX 
SETNLE AL 
CMOVNB RCX, RCX 
XOR AL, 29 
XOR RAX, -2074511745 
MOVZX CX, DL 
AND RDX, 0b1111111111111 # instrumentation
CMOVNB DX, word ptr [R14 + RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
