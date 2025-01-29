.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, -77 # instrumentation
ADC RBX, 11 
AND RSI, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RSI], DL 
CMOVBE EBX, EBX 
AND RAX, 0b1111111111111 # instrumentation
IMUL ECX, dword ptr [R14 + RAX], -102 
AND RAX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RAX], -101 
CMOVNZ ESI, EDI 
ADD DL, 92 
AND RDI, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RDI], 0 
CMOVBE SI, SI 
AND RDI, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RDI], EDI 
AND RCX, 0b1111111111111 # instrumentation
IMUL dword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVLE EDX, dword ptr [R14 + RDX] 
CMP EAX, -1634575387 
DEC EDX 
AND RSI, 0b1111111111111 # instrumentation
CMOVBE RSI, qword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RAX], 0b1000000000000000000000000000000 # instrumentation
BSR RSI, qword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVBE RAX, qword ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
SUB ECX, dword ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
ADC RBX, qword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RAX], ECX 
AND RSI, 0b1111111111111 # instrumentation
CMOVNB RDX, qword ptr [R14 + RSI] 
XCHG AL, CL 
AND RCX, 0b1111111111111 # instrumentation
CMOVNB CX, word ptr [R14 + RCX] 
STD  
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RDX], 85 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
