.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RSI], CL 
INC DIL 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RDX], 120 
AND RAX, 0b1111111111111 # instrumentation
SUB EAX, dword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
ADC AL, byte ptr [R14 + RDX] 
SUB AX, CX 
MOV ESI, EAX 
JNL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDX], AL 
CMP CL, -68 
AND RDX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RDX], CL 
AND RAX, 0b1111111111111 # instrumentation
IMUL DX, word ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RAX], BX 
AND RBX, 0b1111111111111 # instrumentation
SUB DL, byte ptr [R14 + RBX] 
JMP .bb_main.2 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RAX], SI 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RCX], EDX 
AND RCX, 0b1111111111111 # instrumentation
LOCK DEC byte ptr [R14 + RCX] 
CMP RAX, -1619397338 
ADC RBX, -76 
CWDE  
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
