.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CMP RAX, 2096466741 
ADD SIL, -66 
SUB ESI, EDI 
AND RAX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RAX], -27 
SBB RAX, -456797215 
ADC AL, 57 
JMP .bb_main.1 
.bb_main.1:
OR RCX, 0b1000000000000000000000000000000 # instrumentation
BSR RDI, RCX 
OR ESI, 0b1000000000000000000000000000000 # instrumentation
BSF ECX, ESI 
AND RDI, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RDI], AL 
AND RCX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RCX], -44 
BSWAP EBX 
XCHG DX, AX 
ADC CX, AX 
JNS .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
ADD DIL, -75 # instrumentation
CMOVO SI, BX 
JMP .bb_main.3 
.bb_main.3:
MOVZX ESI, DI 
AND RDI, 0b1111111111111 # instrumentation
CMOVNLE RSI, qword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RDI], EBX 
AND RBX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RBX], -77 
SUB EAX, 326967259 
JMP .bb_main.4 
.bb_main.4:
ADD DIL, -83 # instrumentation
CMOVBE EDX, EDX 
SBB RAX, RBX 
AND RCX, 0b1111111111111 # instrumentation
MOVZX ECX, word ptr [R14 + RCX] 
JO .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
ADD DIL, 75 
SUB CL, CL 
AND RBX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RBX], CX 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RBX], 1 
AND RAX, 0b1111111111111 # instrumentation
ADD RBX, qword ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK INC byte ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
