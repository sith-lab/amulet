.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
CMOVP ESI, dword ptr [R14 + RDI] 
SUB DIL, DL 
CMOVP ECX, EAX 
JMP .bb_main.1 
.bb_main.1:
CBW  
AND RCX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RCX], 81 
AND RBX, 0b1111111111111 # instrumentation
CMOVBE RAX, qword ptr [R14 + RBX] 
XCHG SIL, CL 
CMP AL, -93 
JB .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDX], ECX 
AND RDX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RDX], DIL 
AND RDI, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RDI], EDX 
AND RAX, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RBX], -76 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RBX], RCX 
JMP .bb_main.3 
.bb_main.3:
AND RBX, 0b1111111111111 # instrumentation
MOVSX EAX, word ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNS RAX, qword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RAX], DIL 
AND RCX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RCX], 10 
AND RAX, 0b1111111111111 # instrumentation
CMOVBE RSI, qword ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RAX], SI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
