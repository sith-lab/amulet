.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
CMOVNB DX, word ptr [R14 + RBX] 
MOVSX AX, CL 
ADC BL, CL 
AND RDI, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RDI], CL 
MOVSX CX, DL 
AND RAX, 0b1111111111111 # instrumentation
MUL word ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RDI], RDI 
AND RAX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RAX], AL 
JBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD RAX, 753571254 
SBB AX, 19489 
SBB AL, 6 
CMOVBE EDI, EBX 
AND RBX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RBX], 0b1000000000000000000000000000000 # instrumentation
BSF RDX, qword ptr [R14 + RBX] 
MOVSX ESI, AL 
AND RAX, 0b1111111111111 # instrumentation
CMOVNS RCX, qword ptr [R14 + RAX] 
IMUL AL 
CMOVNO ECX, EDI 
AND RDI, 0b1111111111111 # instrumentation
LOCK INC word ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RSI], 0b1000000000000000 # instrumentation
BSR SI, word ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RSI], -23 
SBB EBX, ECX 
AND RBX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RBX], RAX 
AND RDX, 0b1111111111111 # instrumentation
SUB CX, word ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNO RCX, qword ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNO EDX, dword ptr [R14 + RBX] 
IMUL EDX 
AND RAX, 0b1111111111111 # instrumentation
CMOVBE ECX, dword ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RAX], -23 
ADC RDI, 62 
CMOVO SI, AX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
