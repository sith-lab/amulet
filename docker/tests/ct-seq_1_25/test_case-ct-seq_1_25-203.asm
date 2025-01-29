.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RDI] 
SUB RBX, RDX 
CMOVB EDX, ECX 
LAHF  
MOV EAX, 1687222879 
AND RDX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RDX], CX 
DEC EDI 
DEC CL 
AND RSI, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RSI], EDI 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RAX], -37 
AND RDI, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RDI], 93 
AND RDI, 0b1111111111111 # instrumentation
LOCK NEG dword ptr [R14 + RDI] 
CMP AL, 99 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RCX], EDX 
INC RAX 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RAX], 94 
AND RBX, 0b1111111111111 # instrumentation
CMOVNB RCX, qword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVS SI, word ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RCX], AL 
AND RDX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDX], AL 
AND RBX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RBX], 12 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RSI], CL 
CMOVNO RAX, RDX 
AND RDX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RDX], RCX 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RDX], AL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
