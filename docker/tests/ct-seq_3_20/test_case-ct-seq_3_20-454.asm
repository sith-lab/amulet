.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
IMUL ESI 
AND RCX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RCX], 89 
AND RDX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RDX], CX 
AND RDX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDX], 0b1000000000000000 # instrumentation
BSR DI, word ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK DEC qword ptr [R14 + RBX] 
JNL .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RCX] 
MOV RSI, RDI 
AND RDX, 0b1111111111111 # instrumentation
ADC AL, byte ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK NEG qword ptr [R14 + RDX] 
LOOPNE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RDI], CL 
AND RSI, 0b1111111111111 # instrumentation
CMOVP ECX, dword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNLE RDI, qword ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNZ EDX, dword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSR RAX, qword ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
CMOVB EBX, dword ptr [R14 + RDX] 
OR ESI, 0b1000000000000000000000000000000 # instrumentation
BSF EDX, ESI 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RSI], 104 
AND RCX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RCX], -76 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RDX], RCX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNO ECX, dword ptr [R14 + RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
