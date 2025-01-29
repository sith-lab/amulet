.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
LOCK DEC byte ptr [R14 + RBX] 
SUB AX, -16690 
JB .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
CBW  
SUB RDX, RAX 
AND RSI, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RSI], DL 
ADC RAX, 1707563270 
AND RAX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RAX], EAX 
CMOVNZ RCX, RSI 
JL .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RAX], CX 
AND RAX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RAX], RDI 
AND RDI, 0b1111111111111 # instrumentation
IMUL qword ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
CMOVL RDX, qword ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNLE ECX, dword ptr [R14 + RBX] 
SBB RDI, RCX 
JB .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RBX, 0b1111111111111 # instrumentation
LOCK DEC byte ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RAX], CL 
AND RAX, 0b1111111111111 # instrumentation
CMOVO CX, word ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNB DI, word ptr [R14 + RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
