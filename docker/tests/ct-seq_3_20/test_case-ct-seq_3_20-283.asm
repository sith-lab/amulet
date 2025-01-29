.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
CMP RSI, qword ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
SUB EDI, dword ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RSI], -35 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RCX], EDX 
AND RAX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RAX], -72 
AND RAX, 0b1111111111111 # instrumentation
CMOVNB SI, word ptr [R14 + RAX] 
ADD AL, -21 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RCX], CL 
AND RDX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RDX], -78 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RSI], RCX 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RAX], EBX 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RDX], DIL 
AND RDI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDI], 60 
AND RSI, 0b1111111111111 # instrumentation
CMP SIL, byte ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RAX], AL 
JMP .bb_main.2 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
ADD CL, byte ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RAX], RCX 
AND RSI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RSI], EAX 
AND RDX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDX], 0b1000000000000000 # instrumentation
BSF DX, word ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVB RDI, qword ptr [R14 + RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
