.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RAX], -77 
AND RSI, 0b1111111111111 # instrumentation
CMOVZ EBX, dword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RAX], -69 
AND RAX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RAX], CL 
CMOVO CX, DX 
AND RCX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RCX], CL 
AND RDI, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
LOCK DEC qword ptr [R14 + RAX] 
ADD SIL, 97 
AND RBX, 0b1111111111111 # instrumentation
CMP BX, word ptr [R14 + RBX] 
JB .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
MOV DI, 15524 
AND RSI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RSI], AL 
AND RBX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RBX], -17 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RDI], -28 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RSI], SI 
AND RSI, 0b1111111111111 # instrumentation
MOVSX RAX, byte ptr [R14 + RSI] 
ADD RDX, RCX 
AND RDI, 0b1111111111111 # instrumentation
SBB RAX, qword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RDI], EDX 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RCX], -102 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
