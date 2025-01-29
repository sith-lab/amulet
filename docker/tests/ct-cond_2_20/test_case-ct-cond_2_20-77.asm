.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDI], BL 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RDI], AX 
AND RBX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RBX], 0b1000000000000000 # instrumentation
BSR DX, word ptr [R14 + RBX] 
XCHG CX, AX 
NEG DL 
AND RAX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RAX] 
IMUL AL 
AND RCX, 0b1111111111111 # instrumentation
IMUL EDX, dword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNO CX, word ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RDI], RDX 
JLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
MOV RDI, qword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RBX], RDX 
AND RSI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RSI], 0b1000000000000000000000000000000 # instrumentation
BSF EDX, dword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RAX], 53 
CMOVO CX, AX 
AND RSI, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RSI], RDX 
AND RSI, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RSI], -121 
CLC  
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RSI], RBX 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RCX], SIL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
