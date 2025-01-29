.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
IMUL EDX, dword ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVLE EBX, dword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RBX], CL 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RDX], ECX 
AND RBX, 0b1111111111111 # instrumentation
CMOVNS EDX, dword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK INC word ptr [R14 + RDI] 
JL .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RAX], 119 
AND RSI, 0b1111111111111 # instrumentation
MOV SIL, byte ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
CMOVBE RAX, qword ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RBX], 19 
AND RDX, 0b1111111111111 # instrumentation
LOCK INC qword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RBX], 31 
JMP .bb_main.2 
.bb_main.2:
CMP DIL, -49 
AND RSI, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RSI], -40 
MOVSX RDX, DX 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RDX], EDI 
AND RDI, 0b1111111111111 # instrumentation
CMP EDI, dword ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RSI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
