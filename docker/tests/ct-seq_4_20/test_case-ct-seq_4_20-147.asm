.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, 90 # instrumentation
CMC  
ADC DX, -118 
AND RDI, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RDI] 
SBB BX, 22 
MOVZX BX, BL 
CMOVNL CX, BX 
JMP .bb_main.1 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
MUL qword ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RAX], AL 
AND RBX, 0b1111111111111 # instrumentation
ADD DL, byte ptr [R14 + RBX] 
JNL .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RBX] 
CMOVS EBX, EBX 
ADD SI, -12 
SAHF  
AND RSI, 0b1111111111111 # instrumentation
LOCK NEG word ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
IMUL EDX, dword ptr [R14 + RSI] 
JMP .bb_main.3 
.bb_main.3:
AND RCX, 0b1111111111111 # instrumentation
CMOVNS RBX, qword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVO RAX, qword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
IMUL byte ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RAX], DL 
AND RDI, 0b1111111111111 # instrumentation
LOCK DEC qword ptr [R14 + RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
