.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
LOCK DEC byte ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNL AX, word ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RBX], 95 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RBX], RDX 
CMP DIL, 67 
JMP .bb_main.1 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RAX], CL 
AND RDX, 0b1111111111111 # instrumentation
ADC RSI, qword ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNZ RDI, qword ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
MOVZX EBX, byte ptr [R14 + RDI] 
MUL AX 
AND RSI, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RSI], CL 
JP .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
CMOVB DI, word ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNB RDX, qword ptr [R14 + RDX] 
CMP CL, BL 
AND RSI, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RSI], RBX 
AND RCX, 0b1111111111111 # instrumentation
CMOVNZ BX, word ptr [R14 + RCX] 
JMP .bb_main.3 
.bb_main.3:
AND RBX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RBX], 74 
MOV EDX, EAX 
AND RDX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RDX], DX 
SUB AL, -42 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
