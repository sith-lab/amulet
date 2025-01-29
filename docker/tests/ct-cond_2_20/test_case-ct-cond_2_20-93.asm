.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, -114 # instrumentation
LAHF  
CMOVNL DX, DX 
AND RCX, 0b1111111111111 # instrumentation
IMUL qword ptr [R14 + RCX] 
CMP RAX, -626204004 
MOVZX RCX, DX 
AND RAX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RAX], ESI 
ADD RBX, RBX 
AND RBX, 0b1111111111111 # instrumentation
NEG qword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNB AX, word ptr [R14 + RAX] 
ADD DX, AX 
SUB BL, -95 
OR DX, 0b1000000000000000 # instrumentation
BSR AX, DX 
AND RDI, 0b1111111111111 # instrumentation
NEG qword ptr [R14 + RDI] 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RDI], RSI 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RCX], 127 
LEA RDX, qword ptr [RCX] 
AND RBX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RBX], -66 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RCX], 13 
AND RBX, 0b1111111111111 # instrumentation
IMUL RCX, qword ptr [R14 + RBX], 69 
AND RSI, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RSI], -102 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
