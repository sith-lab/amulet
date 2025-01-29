.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RSI], 1471 
SUB RAX, 496735904 
AND RAX, 0b1111111111111 # instrumentation
LOCK NEG byte ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RAX], RSI 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RCX], 40 
AND RCX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RCX], ESI 
JMP .bb_main.1 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RAX], -8 
JMP .bb_main.2 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
IMUL word ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSR RCX, qword ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
CMOVS RDI, qword ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RCX], -17 
JL .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RDI, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDI], BL 
AND RBX, 0b1111111111111 # instrumentation
CMOVNBE CX, word ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RCX], -85 
AND RDX, 0b1111111111111 # instrumentation
CMOVP EAX, dword ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDI], 0b1000000000000000 # instrumentation
BSR BX, word ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RAX], 0b1000000000000000000000000000000 # instrumentation
BSF EBX, dword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RSI], 89 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RAX], RSI 
AND RDX, 0b1111111111111 # instrumentation
NEG dword ptr [R14 + RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
