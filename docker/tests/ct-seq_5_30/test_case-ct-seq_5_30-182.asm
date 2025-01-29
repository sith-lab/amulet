.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
OR RBX, 0b1000000000000000000000000000000 # instrumentation
BSR RCX, RBX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNBE ECX, dword ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RAX], RSI 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RDI], -62 
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
LOCK NEG dword ptr [R14 + RSI] 
ADC EAX, ESI 
IMUL EDI, ESI, 71 
ADD SIL, 122 # instrumentation
CMOVLE RSI, RBX 
AND RSI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RSI], CX 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RDX], RAX 
CMOVB SI, DI 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RAX], EDX 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RDI], CL 
JMP .bb_main.2 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
SBB CX, word ptr [R14 + RBX] 
XCHG EAX, EDI 
JMP .bb_main.3 
.bb_main.3:
XCHG AX, BX 
AND RAX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RAX], 9 
CMP RAX, -1263437859 
ADD AX, -66 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RCX], 26 
CMOVNZ EBX, EDX 
AND RCX, 0b1111111111111 # instrumentation
MOV ESI, dword ptr [R14 + RCX] 
NEG DIL 
SBB RDI, RSI 
JMP .bb_main.4 
.bb_main.4:
AND RAX, 0b1111111111111 # instrumentation
CMOVNO EAX, dword ptr [R14 + RAX] 
LEA AX, qword ptr [RBX] 
AND RCX, 0b1111111111111 # instrumentation
MOVSX ESI, word ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
MOV CL, byte ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RSI], 107 
AND RAX, 0b1111111111111 # instrumentation
SBB CX, word ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
