.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
LOCK NEG dword ptr [R14 + RDX] 
IMUL BL 
AND RSI, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RDX], 12 
AND RCX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RCX], RSI 
AND RSI, 0b1111111111111 # instrumentation
DEC word ptr [R14 + RSI] 
JNLE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RDX], ESI 
AND RCX, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RCX], SI 
OR ESI, 0b1000000000000000000000000000000 # instrumentation
BSF EDX, ESI 
AND RSI, 0b1111111111111 # instrumentation
CMOVNBE RDX, qword ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
CMOVLE AX, word ptr [R14 + RSI] 
IMUL RAX 
AND RBX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RBX], DL 
JMP .bb_main.2 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RDX], -18 
AND RCX, 0b1111111111111 # instrumentation
CMOVBE RAX, qword ptr [R14 + RCX] 
ADD DI, DI 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RDX], BL 
ADC SIL, DIL 
AND RDX, 0b1111111111111 # instrumentation
CMOVO RDX, qword ptr [R14 + RDX] 
DEC EAX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
