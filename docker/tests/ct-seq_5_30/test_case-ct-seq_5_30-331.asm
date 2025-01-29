.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RAX], 94 
AND RBX, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RBX], RBX 
ADC RAX, RBX 
ADC EAX, -2070612601 
JS .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
IMUL ECX, ECX, 44 
AND RCX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RCX], 0b1000000000000000 # instrumentation
BSR DX, word ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVB CX, word ptr [R14 + RBX] 
SBB EAX, -776779266 
AND RDI, 0b1111111111111 # instrumentation
INC dword ptr [R14 + RDI] 
LOOPE .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
NEG CL 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RAX], CL 
ADD RCX, 90 
AND RDX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDX], 0b1000000000000000000000000000000 # instrumentation
BSR EDI, dword ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVS ESI, dword ptr [R14 + RDI] 
ADD AL, -74 
JLE .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
ADD DIL, 34 # instrumentation
CMOVP ECX, ECX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNBE SI, word ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RSI], BL 
STD  
ADD RAX, 125 
JMP .bb_main.4 
.bb_main.4:
AND RAX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RAX], AL 
LEA RSI, qword ptr [RSI] 
AND RDX, 0b1111111111111 # instrumentation
MOVSX RDX, byte ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RDI], RDX 
CMP AX, 49 
OR DL, 1 # instrumentation
SBB AX, 32286 
AND RAX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RAX], BL 
AND RDI, 0b1111111111111 # instrumentation
SBB BX, word ptr [R14 + RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
