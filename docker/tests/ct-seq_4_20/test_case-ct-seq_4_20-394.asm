.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
INC byte ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RAX], EBX 
AND RSI, 0b1111111111111 # instrumentation
SBB RDI, qword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RDI], CX 
ADC EAX, 811112931 
AND RDX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RDX], 1 # instrumentation
JL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDX], SI 
ADC CL, DL 
AND RSI, 0b1111111111111 # instrumentation
LOCK INC qword ptr [R14 + RSI] 
ADD RAX, -1521985319 
AND RDX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RDX], ECX 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RSI], -34 
JMP .bb_main.2 
.bb_main.2:
XCHG DL, CL 
INC ESI 
OR AL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV AL 
AND RDI, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RDI], -46 
AND RBX, 0b1111111111111 # instrumentation
DEC qword ptr [R14 + RBX] 
JBE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RAX, 0b1111111111111 # instrumentation
LOCK NEG byte ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RCX], EDI 
CMOVNB EAX, EBX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
