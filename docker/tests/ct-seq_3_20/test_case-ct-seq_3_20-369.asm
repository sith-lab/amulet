.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
CMOVB RCX, qword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVLE EBX, dword ptr [R14 + RDI] 
DEC DX 
AND RSI, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RSI], -10 
JNS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RSI], RDI 
AND RCX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RCX], CL 
AND RCX, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RCX], EBX 
AND RBX, 0b1111111111111 # instrumentation
CMOVL RSI, qword ptr [R14 + RBX] 
JS .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
ADD SIL, 127 # instrumentation
CMOVNO BX, BX 
AND RDX, 0b1111111111111 # instrumentation
MOVSX EDX, word ptr [R14 + RDX] 
MOVSX EDI, CL 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RDI], DI 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RDX], RCX 
AND RCX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RCX], 0b1000000000000000 # instrumentation
BSF DX, word ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
MOVSX RBX, byte ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK DEC qword ptr [R14 + RAX] 
CMOVNP RAX, RAX 
AND RCX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RCX], -76 
MOVZX EDI, DL 
AND RDI, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RDI], BL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
