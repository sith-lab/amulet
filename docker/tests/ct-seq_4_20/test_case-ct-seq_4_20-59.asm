.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RBX], DIL 
AND RDX, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RDX] 
DEC ECX 
AND RCX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RCX], 120 
OR AX, 0b1000000000000000 # instrumentation
BSF SI, AX 
ADD DIL, 29 # instrumentation
JB .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD DIL, 53 # instrumentation
LEA RBX, qword ptr [RSI + RAX + 8651] 
CMC  
AND RBX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RBX], CX 
AND RSI, 0b1111111111111 # instrumentation
CMOVS ECX, dword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RAX], 84 
JMP .bb_main.2 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
LOCK NEG dword ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RBX] 
SUB EBX, EDX 
AND RSI, 0b1111111111111 # instrumentation
CMOVNB DX, word ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RSI], -69 
AND RBX, 0b1111111111111 # instrumentation
MUL qword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RBX], BX 
JNL .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RSI, 0b1111111111111 # instrumentation
LOCK DEC byte ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RCX], AL 
OR EBX, 1 # instrumentation
AND EDX, EBX # instrumentation
SHR EDX, 1 # instrumentation
DIV EBX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
