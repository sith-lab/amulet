.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
CMOVO RCX, qword ptr [R14 + RBX] 
SAHF  
CMOVP RAX, RDX 
AND RAX, 0b1111111111111 # instrumentation
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RSI], -102 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
IMUL EDI, dword ptr [R14 + RDX], 74 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RBX], 3 
AND RSI, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RSI], AX 
AND RBX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RBX], AL 
SAHF  
MUL CL 
ADD DIL, 116 # instrumentation
JLE .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
STC  
AND RDX, 0b1111111111111 # instrumentation
LOCK DEC word ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK INC dword ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RAX], -35 
AND RCX, 0b1111111111111 # instrumentation
CMOVL RCX, qword ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
IMUL ECX, dword ptr [R14 + RSI], -94 
AND RSI, 0b1111111111111 # instrumentation
CMOVB EDX, dword ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RBX], AL 
JP .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RBX, 0b1111111111111 # instrumentation
MOV DI, word ptr [R14 + RBX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
