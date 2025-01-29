.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RSI], BL 
MOV ESI, ESI 
AND RBX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RBX], 123 
ADC EAX, -1834910024 
AND RDX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDX], 122 
ADD BL, AL 
JL .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
ADD RCX, qword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
MUL qword ptr [R14 + RDI] 
CMP RAX, 581866337 
AND RSI, 0b1111111111111 # instrumentation
CMOVNBE RBX, qword ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
LOCK DEC dword ptr [R14 + RBX] 
MOVSX RDX, DL 
CMOVNO DI, BX 
MOVZX BX, DL 
INC AX 
ADC DIL, -94 
JRCXZ .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
CMOVO EAX, dword ptr [R14 + RDI] 
SUB BX, SI 
AND RDI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDI], AX 
AND RBX, 0b1111111111111 # instrumentation
IMUL dword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
MOVSX CX, byte ptr [R14 + RDX] 
CMOVNBE ESI, EDI 
JMP .bb_main.3 
.bb_main.3:
ADD DIL, -28 # instrumentation
CMOVNO ECX, EAX 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RDI], 67 
AND RCX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RCX], RDI 
AND RDX, 0b1111111111111 # instrumentation
CMOVNZ DI, word ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RBX], -27 
JMP .bb_main.4 
.bb_main.4:
ADD SIL, -12 # instrumentation
CMOVNO BX, CX 
SBB EAX, 2072090630 
CBW  
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
