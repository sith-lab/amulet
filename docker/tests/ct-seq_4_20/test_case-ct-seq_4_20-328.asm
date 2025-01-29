.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
ADD DX, word ptr [R14 + RDX] 
CMOVNS EDX, EDI 
JMP .bb_main.1 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RCX], 81 
AND RDI, 0b1111111111111 # instrumentation
CMOVNBE RCX, qword ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNB EDX, dword ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
ADD BL, byte ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
MOVSX CX, byte ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
CMOVP EBX, dword ptr [R14 + RDX] 
JLE .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
CMOVZ EDI, dword ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNZ ECX, dword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVBE RDI, qword ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RDI], CL 
AND RDX, 0b1111111111111 # instrumentation
LOCK NEG byte ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RBX], -58 
CMP AL, 99 
JMP .bb_main.3 
.bb_main.3:
IMUL CL 
AND RDI, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
IMUL EDX, dword ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
ADC CL, byte ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
ADC ECX, dword ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
