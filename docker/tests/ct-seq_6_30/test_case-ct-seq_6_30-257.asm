.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, 9 # instrumentation
XCHG CL, AL 
SBB RAX, -815621826 
OR ESI, 0b1000000000000000000000000000000 # instrumentation
BSF EBX, ESI 
AND RBX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RBX], -1558743172 
JMP .bb_main.1 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RAX], EAX 
JNBE .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
IMUL SI, word ptr [R14 + RDX], -30 
AND RDI, 0b1111111111111 # instrumentation
CMOVNO ECX, dword ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
IMUL dword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNL ESI, dword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNLE BX, word ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK INC byte ptr [R14 + RSI] 
JMP .bb_main.3 
.bb_main.3:
CMP AL, 56 
AND RDX, 0b1111111111111 # instrumentation
SBB BL, byte ptr [R14 + RDX] 
OR ESI, 0b1000000000000000000000000000000 # instrumentation
BSR EAX, ESI 
CMP RAX, 209456786 
CMOVNZ RCX, RAX 
CMOVLE EAX, ESI 
JNO .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
ADD DIL, -60 # instrumentation
CMOVNZ ECX, ESI 
CMOVS RDI, RBX 
AND RAX, 0b1111111111111 # instrumentation
ADD SIL, 71 # instrumentation
CMOVNB AX, word ptr [R14 + RAX] 
LAHF  
CMOVNO CX, DI 
JMP .bb_main.5 
.bb_main.5:
SUB EAX, 1065301818 
LEA RBX, qword ptr [RCX + RSI] 
CLC  
AND RDI, 0b1111111111111 # instrumentation
CMOVNS EDX, dword ptr [R14 + RDI] 
CMOVO EDX, ECX 
AND RDX, 0b1111111111111 # instrumentation
CMP DI, word ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
CMP SIL, byte ptr [R14 + RAX] 
CMOVNB ESI, EDI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
