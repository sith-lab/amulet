.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
CMOVS RSI, qword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
ADD BX, word ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
CMP ECX, dword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RDI], AL 
AND RDI, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RDI], AX 
CMOVNS SI, AX 
ADC AX, -10002 
MOVSX EDI, DI 
AND RDX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RDX], -48 
JL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD RAX, 2076016159 
AND RDI, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RDI], RAX 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RBX], RAX 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RBX], 66 
AND RCX, 0b1111111111111 # instrumentation
IMUL ESI, dword ptr [R14 + RCX] 
JNO .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
MUL DL 
AND RDX, 0b1111111111111 # instrumentation
IMUL qword ptr [R14 + RDX] 
SBB RSI, RDI 
AND RAX, 0b1111111111111 # instrumentation
CMOVP BX, word ptr [R14 + RAX] 
OR RDI, 0b1000000000000000000000000000000 # instrumentation
BSF RBX, RDI 
AND RBX, 0b1111111111111 # instrumentation
ADD CL, byte ptr [R14 + RBX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
