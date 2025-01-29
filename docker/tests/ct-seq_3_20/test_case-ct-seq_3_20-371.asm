.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CBW  
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RBX], 53 
AND RCX, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RAX], RSI 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RDX], CX 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RSI], AX 
JL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
CMOVP RAX, qword ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
CMP CL, byte ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
SBB RCX, qword ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RAX], -79 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RSI], 14 
AND RCX, 0b1111111111111 # instrumentation
CMOVNS EDX, dword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
IMUL RBX, qword ptr [R14 + RDX], 117 
ADD SIL, 30 # instrumentation
JNP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
CBW  
SUB EAX, 81 
AND RDI, 0b1111111111111 # instrumentation
ADC DIL, byte ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RSI] 
ADD CX, -59 
AND RBX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RBX], -22 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RSI], -1 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
