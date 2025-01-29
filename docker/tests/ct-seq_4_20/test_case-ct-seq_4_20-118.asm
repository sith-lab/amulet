.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  
CMP CL, DIL 
AND RAX, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RAX], RSI 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RCX], ESI 
JLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RDI], CX 
SBB DIL, -109 
CMOVP EDX, EBX 
AND RDX, 0b1111111111111 # instrumentation
ADC RCX, qword ptr [R14 + RDX] 
JMP .bb_main.2 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RAX], ECX 
AND RAX, 0b1111111111111 # instrumentation
CMP RDI, qword ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
IMUL qword ptr [R14 + RAX] 
ADD SIL, 76 # instrumentation
CMOVP DX, BX 
ADC DL, -12 
SUB CX, CX 
CMOVL EAX, ECX 
AND RSI, 0b1111111111111 # instrumentation
CMOVNB RDX, qword ptr [R14 + RSI] 
JMP .bb_main.3 
.bb_main.3:
ADD SIL, 105 # instrumentation
CMOVNZ RAX, RBX 
AND RAX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
ADC CL, byte ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RSI], DIL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
