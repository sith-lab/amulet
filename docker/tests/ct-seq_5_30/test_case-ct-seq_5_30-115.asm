.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
SUB DX, word ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RDX], 108 
AND RBX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RBX], -96 
JS .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
CMP ECX, EDI 
STC  
NEG RSI 
AND RCX, 0b1111111111111 # instrumentation
IMUL SI, word ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
MOVZX DX, byte ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RAX], DL 
AND RDX, 0b1111111111111 # instrumentation
MOVSX EBX, byte ptr [R14 + RDX] 
DEC ECX 
JNB .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
CMOVB AX, word ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RBX], -21 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RDX], RAX 
IMUL EBX, EBX 
AND RCX, 0b1111111111111 # instrumentation
MOV DL, byte ptr [R14 + RCX] 
JMP .bb_main.3 
.bb_main.3:
AND RBX, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RSI], 106 
CMOVNZ RDI, RCX 
MOV EDI, EBX 
ADD RAX, 1856594329 
AND RDI, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RDI], -41 
JMP .bb_main.4 
.bb_main.4:
AND RDX, 0b1111111111111 # instrumentation
NEG dword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDX], 0b1000000000000000000000000000000 # instrumentation
BSR EDX, dword ptr [R14 + RDX] 
SUB CL, AL 
NEG SIL 
AND RSI, 0b1111111111111 # instrumentation
IMUL EDI, dword ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RSI], RAX 
AND RDX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RDX], SI 
CMOVLE ECX, EDI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
