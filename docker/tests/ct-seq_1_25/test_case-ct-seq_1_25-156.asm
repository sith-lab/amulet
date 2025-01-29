.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
OR RCX, 0b1000000000000000000000000000000 # instrumentation
BSF RBX, RCX 
ADD SIL, -32 # instrumentation
CMOVNS EDI, EAX 
AND RDI, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RDI], RDI 
AND RCX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RCX], -4 
AND RDI, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RDI], 7 
IMUL CL 
AND RDX, 0b1111111111111 # instrumentation
CMOVNB RAX, qword ptr [R14 + RDX] 
OR ECX, 0b1000000000000000000000000000000 # instrumentation
BSF EDX, ECX 
ADD DIL, 91 # instrumentation
CMOVBE EDI, EBX 
ADD RSI, 102 
AND RAX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RAX], 0b1000000000000000000000000000000 # instrumentation
BSR EAX, dword ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNL EDI, dword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVS RSI, qword ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDX], SI 
MOV EAX, 1490284315 
MOVZX RSI, SIL 
AND RDI, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RDI] 
CMP RAX, RSI 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RCX], AL 
OR RSI, 0b1000000000000000000000000000000 # instrumentation
BSF RAX, RSI 
AND RDX, 0b1111111111111 # instrumentation
INC byte ptr [R14 + RDX] 
SUB CL, AL 
AND RAX, 0b1111111111111 # instrumentation
IMUL dword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RSI], RAX 
CMOVP CX, CX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
