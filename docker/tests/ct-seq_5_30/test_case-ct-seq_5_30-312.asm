.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RAX], 2103979792 
CMOVLE EDX, EDX 
AND RDX, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RDX], RSI 
JMP .bb_main.1 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNBE AX, word ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
IMUL word ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RCX], RCX 
MOV EDI, 754537414 
CMOVNZ ECX, EBX 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RSI], DL 
JMP .bb_main.2 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RSI], AL 
AND RDI, 0b1111111111111 # instrumentation
CMOVNO RSI, qword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
CMOVP EAX, dword ptr [R14 + RDI] 
CMOVNBE SI, BX 
STC  
SUB RAX, -1411844830 
AND RBX, 0b1111111111111 # instrumentation
CMOVNZ CX, word ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RCX], 107 
JNB .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RDX], 40 
AND RSI, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RSI], 1 
SUB AX, -21335 
AND RDX, 0b1111111111111 # instrumentation
ADC CL, byte ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNBE RDX, qword ptr [R14 + RDX] 
ADD DIL, 85 
AND RAX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RAX], -125 
JMP .bb_main.4 
.bb_main.4:
ADD SIL, -3 # instrumentation
SBB SIL, 41 
AND RDI, 0b1111111111111 # instrumentation
CMOVB RDX, qword ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RCX], RCX 
OR DX, 0b1000000000000000 # instrumentation
BSR BX, DX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
