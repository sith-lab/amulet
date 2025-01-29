.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, 42 # instrumentation
CMOVNO ECX, EDI 
STD  
AND RBX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RBX], EDI 
AND RDI, 0b1111111111111 # instrumentation
CMOVNO AX, word ptr [R14 + RDI] 
MOVZX RDX, SIL 
CMP RAX, 110 
JMP .bb_main.1 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
MOV ECX, dword ptr [R14 + RDX] 
DEC BL 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RDX], RAX 
CMC  
AND RBX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RBX], CL 
AND RDX, 0b1111111111111 # instrumentation
CMP DX, word ptr [R14 + RDX] 
JNP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RDI], -116 
AND RSI, 0b1111111111111 # instrumentation
CMOVB AX, word ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
NEG qword ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RBX], -19 
AND RBX, 0b1111111111111 # instrumentation
LOCK INC word ptr [R14 + RBX] 
STC  
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RBX], RSI 
OR EBX, 0b1000000000000000000000000000000 # instrumentation
BSF EDX, EBX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
