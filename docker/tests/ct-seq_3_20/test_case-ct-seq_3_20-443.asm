.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RBX], RAX 
AND RCX, 0b1111111111111 # instrumentation
CMOVNL EDX, dword ptr [R14 + RCX] 
MUL AL 
OR EDI, 0b1000000000000000000000000000000 # instrumentation
BSF ESI, EDI 
ADD DX, SI 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RAX], RBX 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RCX], EDX 
SBB EAX, -978652140 
JMP .bb_main.1 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
IMUL SI, word ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RDX], EBX 
AND RBX, 0b1111111111111 # instrumentation
LOCK INC qword ptr [R14 + RBX] 
JNS .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RDX], BX 
AND RDI, 0b1111111111111 # instrumentation
MOVSX RDI, byte ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RCX], -57 
AND RDI, 0b1111111111111 # instrumentation
SUB RDI, qword ptr [R14 + RDI] 
CMOVNZ RDX, RCX 
AND RSI, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RSI], DX 
MOVSX EDX, DL 
AND RDI, 0b1111111111111 # instrumentation
IMUL qword ptr [R14 + RDI] 
ADC BX, -110 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
