.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RBX], -116 
SUB DI, 16 
AND RDI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDI], 851 
AND RAX, 0b1111111111111 # instrumentation
CMOVO DI, word ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
MUL qword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RDX], 120 
BSWAP EDI 
AND RSI, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RSI] 
LOOPNE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
DEC AX 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RDI], 90 
AND RCX, 0b1111111111111 # instrumentation
CMOVNB RAX, qword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVB RDI, qword ptr [R14 + RDI] 
CMOVLE EDX, EAX 
AND RDI, 0b1111111111111 # instrumentation
SUB EAX, dword ptr [R14 + RDI] 
MOV RSI, -8596508491156743269 
LOOP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RBX], 0b1000000000000000000000000000000 # instrumentation
BSF ECX, dword ptr [R14 + RBX] 
ADD SIL, -118 # instrumentation
ADC RBX, -37 
AND RSI, 0b1111111111111 # instrumentation
LOCK INC byte ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
IMUL AX, word ptr [R14 + RCX], -15 
AND RDX, 0b1111111111111 # instrumentation
MOVZX RSI, byte ptr [R14 + RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
