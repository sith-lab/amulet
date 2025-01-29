.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RBX], -3 
AND RBX, 0b1111111111111 # instrumentation
AND RDX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDX], DIL 
XCHG RCX, RDI 
ADC EBX, ESI 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RBX], -128 
AND RBX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RBX], 63 
AND RDI, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RDI], AL 
AND RDI, 0b1111111111111 # instrumentation
LOCK NEG dword ptr [R14 + RDI] 
JMP .bb_main.1 
.bb_main.1:
ADD SIL, 11 # instrumentation
SBB AX, 26860 
LEA EAX, qword ptr [RDI] 
AND RDX, 0b1111111111111 # instrumentation
CMOVB BX, word ptr [R14 + RDX] 
IMUL EDI 
OR EDI, 0b1000000000000000000000000000000 # instrumentation
BSF EAX, EDI 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RAX], DI 
JNS .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
CMP AL, byte ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RDI], RAX 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RCX], 104 
CMOVNBE RAX, RSI 
NEG EAX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
