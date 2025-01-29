.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, 6 # instrumentation
CMOVNBE RCX, RSI 
AND RSI, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RSI], -41 
AND RCX, 0b1111111111111 # instrumentation
IMUL RDX, qword ptr [R14 + RCX], -12 
ADD SIL, -13 # instrumentation
CMOVNBE RAX, RBX 
AND RBX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RBX], EDX 
AND RDI, 0b1111111111111 # instrumentation
SBB RCX, qword ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
CMOVZ RDI, qword ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RSI], RSI 
AND RBX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RBX], RAX 
JNP .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RAX], 0b1000000000000000 # instrumentation
BSR CX, word ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RBX], 21 
AND RSI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RSI], EDX 
AND RSI, 0b1111111111111 # instrumentation
IMUL qword ptr [R14 + RSI] 
JO .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
MOV RSI, -6596184341306834060 
XCHG DI, SI 
CDQ  
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RSI], RCX 
CMP BL, CL 
ADC CX, -94 
ADD AL, -11 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
