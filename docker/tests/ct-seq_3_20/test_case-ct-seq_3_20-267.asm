.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RSI], -10 
AND RDI, 0b1111111111111 # instrumentation
CMOVNZ RDI, qword ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
CMOVBE RDX, qword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
ADD EBX, dword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVZ ESI, dword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RDI], SI 
ADC SI, -104 
AND RAX, 0b1111111111111 # instrumentation
CMOVP RDI, qword ptr [R14 + RAX] 
SUB EBX, EAX 
JP .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDI], RAX 
AND RDI, 0b1111111111111 # instrumentation
CMOVP RAX, qword ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RCX], AL 
CWD  
AND RBX, 0b1111111111111 # instrumentation
CMOVL RAX, qword ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RCX], RDI 
AND RSI, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RSI], -104 
STC  
JMP .bb_main.2 
.bb_main.2:
OR ESI, 0b1000000000000000000000000000000 # instrumentation
BSF ECX, ESI 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RBX], RSI 
CMOVNO EDX, EDI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
