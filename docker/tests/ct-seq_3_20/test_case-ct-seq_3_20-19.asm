.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RSI], 22 
IMUL EDX 
AND RDI, 0b1111111111111 # instrumentation
CMOVO DI, word ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RBX], 1 
IMUL SIL 
AND RDI, 0b1111111111111 # instrumentation
IMUL CX, word ptr [R14 + RDI], -12 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RBX], -20 
CLC  
JMP .bb_main.1 
.bb_main.1:
IMUL EDI 
ADC AX, 13879 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RDI], 45 
OR ESI, 0b1000000000000000000000000000000 # instrumentation
BSF ESI, ESI 
AND RSI, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RSI], 25 
JNL .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
XCHG RCX, RAX 
AND RBX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RBX], CL 
AND RCX, 0b1111111111111 # instrumentation
MOVZX RSI, byte ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
IMUL dword ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK NEG byte ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
DEC qword ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
ADC AL, byte ptr [R14 + RBX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
