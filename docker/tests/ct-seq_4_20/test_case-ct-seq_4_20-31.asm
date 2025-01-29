.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
OR RDX, 0b1000000000000000000000000000000 # instrumentation
BSF RDI, RDX 
ADD AL, -37 
AND RCX, 0b1111111111111 # instrumentation
CMOVNBE SI, word ptr [R14 + RCX] 
JB .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
DEC CX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNLE CX, word ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RDI], EDI 
AND RAX, 0b1111111111111 # instrumentation
CMOVNO EBX, dword ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNL AX, word ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK DEC word ptr [R14 + RBX] 
JS .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
IMUL RSI 
AND RSI, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RSI], 36 
AND RCX, 0b1111111111111 # instrumentation
MOVSX RDI, word ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
SBB AL, byte ptr [R14 + RAX] 
JNBE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RDX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RDX], 104 
AND RAX, 0b1111111111111 # instrumentation
CMOVNO RCX, qword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
MOVSX RCX, word ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNLE EAX, dword ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVO RDX, qword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RDX], 103 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
