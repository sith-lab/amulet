.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
LOCK INC dword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
CMOVS RCX, qword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
SBB DIL, byte ptr [R14 + RSI] 
XCHG RCX, RDX 
JMP .bb_main.1 
.bb_main.1:
ADD DIL, -7 # instrumentation
JB .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
CMP CL, CL 
MOV CX, -8414 
ADD BX, SI 
AND RAX, 0b1111111111111 # instrumentation
CMOVNS EDI, dword ptr [R14 + RAX] 
MUL CL 
ADD SIL, 88 # instrumentation
CMOVL RDI, RBX 
CMP SI, SI 
AND RDX, 0b1111111111111 # instrumentation
CMOVB RDX, qword ptr [R14 + RDX] 
ADC RDI, -15 
AND RCX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RCX], ECX 
JMP .bb_main.3 
.bb_main.3:
IMUL RSI 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RSI], 76 
CMOVNLE RSI, RCX 
AND RCX, 0b1111111111111 # instrumentation
CMOVNO ECX, dword ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RAX], 0b1000000000000000 # instrumentation
BSR CX, word ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RAX], RDX 
LEA ECX, qword ptr [RCX] 
JMP .bb_main.4 
.bb_main.4:
AND RSI, 0b1111111111111 # instrumentation
INC byte ptr [R14 + RSI] 
ADC RAX, -1763283757 
CMOVB RSI, RDX 
MOV EDX, ECX 
CMOVS RBX, RSI 
OR CL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV CL 
ADD SIL, 60 # instrumentation
ADC CX, CX 
AND RCX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RCX], -13 
AND RDI, 0b1111111111111 # instrumentation
CMOVP ESI, dword ptr [R14 + RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
