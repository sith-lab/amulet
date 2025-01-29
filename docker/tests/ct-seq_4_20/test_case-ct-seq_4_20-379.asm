.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
CMOVNZ EDI, dword ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RAX], -40 
JLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD SIL, -88 # instrumentation
CMOVNZ RDX, RDX 
CMP AX, DX 
AND RAX, 0b1111111111111 # instrumentation
LOCK INC qword ptr [R14 + RAX] 
IMUL RSI, RAX, 36 
AND RCX, 0b1111111111111 # instrumentation
SBB DX, word ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
MOV EDX, dword ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RCX], RDX 
JNZ .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
ADD DIL, 108 # instrumentation
SBB EDX, EDI 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RSI], -9 
JNLE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
ADD DIL, -128 # instrumentation
SBB AX, -52 
AND RDI, 0b1111111111111 # instrumentation
LOCK DEC word ptr [R14 + RDI] 
OR ESI, 0b1000000000000000000000000000000 # instrumentation
BSR EAX, ESI 
AND RDI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDI], AX 
AND RCX, 0b1111111111111 # instrumentation
CMOVNO EDX, dword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNP RSI, qword ptr [R14 + RDX] 
XCHG RCX, RSI 
MOV BL, DIL 
AND RSI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RSI], EAX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
