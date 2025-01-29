.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RAX], CL 
AND RBX, 0b1111111111111 # instrumentation
CMOVBE RBX, qword ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
ADD DIL, byte ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RBX], DL 
CMP CL, -1 
IMUL EBX 
XCHG EAX, EAX 
AND RSI, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RSI], DX 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RAX], -111 
MUL RSI 
AND RDI, 0b1111111111111 # instrumentation
ADD BL, byte ptr [R14 + RDI] 
JNBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD DIL, -44 # instrumentation
MOVSX AX, AL 
SBB RDX, RCX 
AND RAX, 0b1111111111111 # instrumentation
MOVZX BX, byte ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDX], -97 
AND RDX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RSI], 0b1000000000000000000000000000000 # instrumentation
BSF RSI, qword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
CMOVLE DI, word ptr [R14 + RCX] 
MUL AX 
AND RAX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RAX], DX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
