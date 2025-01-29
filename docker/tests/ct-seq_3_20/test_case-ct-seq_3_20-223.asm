.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MOV DL, AL 
MOVSX RDX, DIL 
AND RDX, 0b1111111111111 # instrumentation
CMOVNO AX, word ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
IMUL RDX, qword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
MOVZX RCX, word ptr [R14 + RSI] 
STC  
AND RCX, 0b1111111111111 # instrumentation
IMUL qword ptr [R14 + RCX] 
JMP .bb_main.1 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RDI] 
IMUL AX, AX 
AND RDX, 0b1111111111111 # instrumentation
DEC qword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
SUB CL, byte ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RSI], CX 
AND RAX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RAX], DIL 
JZ .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
CMP CX, word ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNBE RDI, qword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RBX], -21 
ADD DL, -60 
AND RSI, 0b1111111111111 # instrumentation
ADC RSI, qword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
ADC DL, byte ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
MOV DL, byte ptr [R14 + RSI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
