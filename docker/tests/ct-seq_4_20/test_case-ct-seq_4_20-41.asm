.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
CMOVB CX, word ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
MOVZX EDI, byte ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RDI], RDI 
AND RAX, 0b1111111111111 # instrumentation
ADC DX, word ptr [R14 + RAX] 
JNZ .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RCX], EAX 
AND RDI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSF RSI, qword ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RSI], -68 
NEG DIL 
AND RAX, 0b1111111111111 # instrumentation
MOV RBX, qword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RSI] 
JLE .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
MOVZX CX, DL 
AND RDI, 0b1111111111111 # instrumentation
MOV SI, word ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
MOVZX EDX, byte ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RBX], DIL 
JB .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RDI, 0b1111111111111 # instrumentation
CMOVNB RDX, qword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
CMOVBE RBX, qword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RDI], 0 
AND RBX, 0b1111111111111 # instrumentation
CMOVNL DX, word ptr [R14 + RBX] 
OR ECX, 0b1000000000000000000000000000000 # instrumentation
BSR EDX, ECX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
