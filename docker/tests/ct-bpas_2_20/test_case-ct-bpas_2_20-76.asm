.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
IMUL ESI, EDI, -100 
AND RDX, 0b1111111111111 # instrumentation
CMOVNBE DX, word ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
CMP RAX, qword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
SUB DL, byte ptr [R14 + RBX] 
CMP CL, DIL 
OR BX, 1 # instrumentation
AND DX, BX # instrumentation
SHR DX, 1 # instrumentation
DIV BX 
AND RDX, 0b1111111111111 # instrumentation
MOVSX EBX, word ptr [R14 + RDX] 
MUL DX 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
MOVSD  
AND RDX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDX], 1 # instrumentation
LEA ESI, qword ptr [RSI] 
AND RCX, 0b1111111111111 # instrumentation
CMP BL, byte ptr [R14 + RCX] 
JBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RCX], -113 
AND RSI, 0b1111111111111 # instrumentation
CMOVP EDI, dword ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
CMOVB RCX, qword ptr [R14 + RSI] 
ADC DIL, -13 
AND RAX, 0b1111111111111 # instrumentation
MOVZX CX, byte ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RBX], RCX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
