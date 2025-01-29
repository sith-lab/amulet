.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, 104 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RDX], AL 
AND RSI, 0b1111111111111 # instrumentation
ADD DIL, 120 # instrumentation
MOVSX ECX, word ptr [R14 + RSI] 
LAHF  
AND RAX, 0b1111111111111 # instrumentation
LOOPNE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
SUB EAX, 1190315697 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RDX], EDX 
JP .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
LOCK INC dword ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RAX], CL 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RAX], 41 
AND RSI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RSI], 17924 
CMOVNS EAX, EAX 
AND RBX, 0b1111111111111 # instrumentation
CMOVB AX, word ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RAX], 20 
AND RSI, 0b1111111111111 # instrumentation
MOVSX EDX, byte ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RAX], RDX 
AND RAX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RAX], EBX 
JMP .bb_main.3 
.bb_main.3:
AND RAX, 0b1111111111111 # instrumentation
CMOVS RBX, qword ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNP AX, word ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RSI], AX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
