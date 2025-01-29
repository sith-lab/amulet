.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDI], EBX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNO EDX, dword ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RSI], 74 
JMP .bb_main.1 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
ADD ESI, dword ptr [R14 + RDX] 
CMOVBE AX, AX 
AND RAX, 0b1111111111111 # instrumentation
CMOVNL RDI, qword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
NEG qword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RDX], AX 
AND RDI, 0b1111111111111 # instrumentation
MOV CL, byte ptr [R14 + RDI] 
IMUL RSI, RSI, -42 
LEA RSI, qword ptr [RDX + RBX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK INC dword ptr [R14 + RBX] 
CMOVB BX, AX 
AND RSI, 0b1111111111111 # instrumentation
LOCK DEC dword ptr [R14 + RSI] 
JP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
CMOVZ RAX, qword ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
MOVSX SI, byte ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVP ESI, dword ptr [R14 + RCX] 
JNZ .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
ADD DIL, -111 # instrumentation
CMOVNO CX, DX 
SUB SI, BX 
SBB DIL, 123 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
