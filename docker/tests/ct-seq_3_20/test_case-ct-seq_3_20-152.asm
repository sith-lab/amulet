.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
CMOVBE DI, word ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RBX], -55 
AND RCX, 0b1111111111111 # instrumentation
ADC RAX, qword ptr [R14 + RCX] 
CMOVP DX, CX 
AND RBX, 0b1111111111111 # instrumentation
LOCK NEG byte ptr [R14 + RBX] 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVBE EDI, dword ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDX], 0b1000000000000000000000000000000 # instrumentation
BSR RDI, qword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RBX] 
JMP .bb_main.2 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RCX], CL 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RDX], RDI 
AND RDX, 0b1111111111111 # instrumentation
LOCK DEC dword ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
IMUL SI, word ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
MOVZX RAX, byte ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RAX], BL 
MOVZX RDX, AX 
SUB ECX, ECX 
AND RDX, 0b1111111111111 # instrumentation
LOCK DEC word ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RSI], 31 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
