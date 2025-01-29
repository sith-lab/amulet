.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RCX], -123 
AND RBX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RBX], BL 
IMUL RAX, RAX, 10 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RDX], BL 
JS .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RAX], DX 
AND RDI, 0b1111111111111 # instrumentation
CMOVBE RSI, qword ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNZ CX, word ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RDX] 
JMP .bb_main.2 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RDI], EDI 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RAX], -106 
AND RDI, 0b1111111111111 # instrumentation
SBB DIL, byte ptr [R14 + RDI] 
CMOVL SI, AX 
AND RDX, 0b1111111111111 # instrumentation
ADD DIL, byte ptr [R14 + RDX] 
JNZ .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RDX, 0b1111111111111 # instrumentation
MOVZX RAX, word ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RAX], RDI 
AND RBX, 0b1111111111111 # instrumentation
CMOVNS CX, word ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RCX], -120 
AND RBX, 0b1111111111111 # instrumentation
NEG dword ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RSI], AL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
