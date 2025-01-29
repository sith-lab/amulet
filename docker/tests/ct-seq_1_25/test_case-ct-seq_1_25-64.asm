.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RDX], EDI 
AND RCX, 0b1111111111111 # instrumentation
CMOVNBE RSI, qword ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNLE RDX, qword ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RCX], 0b1000000000000000 # instrumentation
BSF DI, word ptr [R14 + RCX] 
ADD CL, -77 
DEC AL 
AND RCX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RCX], RCX 
AND RDX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RDX], RDX 
AND RAX, 0b1111111111111 # instrumentation
NEG qword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RDX] 
OR AX, 0b1000000000000000 # instrumentation
BSF AX, AX 
AND RBX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RBX], DIL 
AND RAX, 0b1111111111111 # instrumentation
CMOVZ EDI, dword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK INC byte ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RDI], RCX 
AND RAX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RAX], -13 
OR BX, 0b1000000000000000 # instrumentation
BSF BX, BX 
AND RCX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RCX], DIL 
AND RDX, 0b1111111111111 # instrumentation
MOVZX RBX, word ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RAX], 0b1000000000000000000000000000000 # instrumentation
BSR ECX, dword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RDX], 86 
IMUL EAX, ESI, 8 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RDI], DI 
CMC  
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
