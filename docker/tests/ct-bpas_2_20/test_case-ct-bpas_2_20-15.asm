.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
NEG DX 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RDI], RAX 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
LODSD  
AND RCX, 0b1111111111111 # instrumentation
IMUL EDI, dword ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RCX], RDI 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
MOVSW  
AND RBX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RBX], AL 
AND RCX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RCX], BL 
AND RDI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDI], 0b1000000000000000 # instrumentation
BSF CX, word ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RBX], -103 
AND RDX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RDX], 3 
JLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RAX], DL 
AND RDX, 0b1111111111111 # instrumentation
SBB BL, byte ptr [R14 + RDX] 
MUL RDX 
AND RDX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RDX], -103 
AND RBX, 0b1111111111111 # instrumentation
SUB CX, word ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RAX], ESI 
AND RDI, 0b1111111111111 # instrumentation
CMOVNBE RAX, qword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RBX], RSI 
AND RSI, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RSI], AL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
