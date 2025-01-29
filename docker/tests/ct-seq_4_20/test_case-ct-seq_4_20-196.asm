.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RDI], 46 
AND RBX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RBX], CX 
AND RAX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RAX], -110 
AND RDI, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RDI], RBX 
JNZ .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
LOCK INC byte ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
MOVSX RCX, byte ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
SUB DX, word ptr [R14 + RSI] 
ADC CX, -70 
AND RDI, 0b1111111111111 # instrumentation
SUB RBX, qword ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RCX], AX 
JLE .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
ADD SIL, -104 # instrumentation
CMOVS EDX, ESI 
AND RAX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RAX], 0b1000000000000000000000000000000 # instrumentation
BSF EAX, dword ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RAX], -52 
AND RBX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RBX], CL 
AND RAX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RAX], SI 
JO .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RDX], 91 
AND RBX, 0b1111111111111 # instrumentation
CMOVZ ECX, dword ptr [R14 + RBX] 
STD  
AND RSI, 0b1111111111111 # instrumentation
CMOVNO RBX, qword ptr [R14 + RSI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
