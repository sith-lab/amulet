.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
LOCK NEG byte ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK INC word ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RDI], -95 
JL .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
SUB DL, 73 
AND RAX, 0b1111111111111 # instrumentation
CMOVNS RDX, qword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RDX], CX 
AND RDX, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RDX], EAX 
JMP .bb_main.2 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RCX], DL 
MOV DIL, SIL 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RDI], AX 
AND RDX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDX], 0b1000000000000000000000000000000 # instrumentation
BSR RCX, qword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RSI], RAX 
LOOPE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RBX, 0b1111111111111 # instrumentation
MUL qword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK DEC dword ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
ADD BL, byte ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RCX], BL 
AND RAX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RAX], 47 
MOV RCX, RSI 
AND RAX, 0b1111111111111 # instrumentation
MOVSX SI, byte ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
