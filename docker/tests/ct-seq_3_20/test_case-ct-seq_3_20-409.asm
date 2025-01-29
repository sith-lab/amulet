.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DL, 28 
AND RDX, 0b1111111111111 # instrumentation
ADD CL, byte ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RSI], BL 
AND RAX, 0b1111111111111 # instrumentation
CMOVNBE RDX, qword ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RBX], 70 
JS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
SBB EAX, dword ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RDX] 
LEA CX, qword ptr [RSI + RSI] 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RCX], 38 
AND RBX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RBX], AL 
AND RDX, 0b1111111111111 # instrumentation
CMOVL AX, word ptr [R14 + RDX] 
CDQ  
AND RAX, 0b1111111111111 # instrumentation
CMOVO ESI, dword ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RDI], RBX 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RDI], EDX 
JS .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
ADD SIL, 45 # instrumentation
CMOVB RDX, RDX 
AND RDI, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RBX], 0b1000000000000000000000000000000 # instrumentation
BSF EAX, dword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
