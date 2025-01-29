.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
SUB CL, byte ptr [R14 + RCX] 
CMOVNP DI, SI 
JS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RSI], EDI 
AND RBX, 0b1111111111111 # instrumentation
ADD DI, word ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVO DI, word ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
MOVSX EDX, word ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
SBB CL, byte ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNB EDI, dword ptr [R14 + RBX] 
JMP .bb_main.2 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
SBB RBX, qword ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RCX], -10 
AND RBX, 0b1111111111111 # instrumentation
CMOVNL BX, word ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RDX], -37 
JMP .bb_main.3 
.bb_main.3:
OR RAX, 0b1000000000000000000000000000000 # instrumentation
BSF RAX, RAX 
AND RDX, 0b1111111111111 # instrumentation
CMOVP SI, word ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
IMUL EDI, dword ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
MUL dword ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNO RBX, qword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RDX], -9 
OR SI, 0b1000000000000000 # instrumentation
BSF CX, SI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
