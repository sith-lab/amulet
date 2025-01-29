.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
LOCK INC dword ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
INC dword ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RCX], 21 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RAX], AL 
JNB .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
MOVSX EDX, byte ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RAX], CL 
AND RBX, 0b1111111111111 # instrumentation
CMOVLE RSI, qword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RDI], ECX 
AND RCX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RCX], 0b1000000000000000000000000000000 # instrumentation
BSF RCX, qword ptr [R14 + RCX] 
CMP RAX, -1401200239 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RAX], 45 
AND RCX, 0b1111111111111 # instrumentation
ADC AX, word ptr [R14 + RCX] 
JMP .bb_main.2 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RAX], SI 
AND RAX, 0b1111111111111 # instrumentation
CMOVNS DI, word ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RSI], RDI 
IMUL EAX 
AND RBX, 0b1111111111111 # instrumentation
SUB AL, byte ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RCX], -62 
CMOVLE EDI, EBX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
