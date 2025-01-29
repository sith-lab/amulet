.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
AND RBX, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RBX], -56 
CMP BL, -51 
SUB AX, DI 
OR BX, 0b1000000000000000 # instrumentation
BSF SI, BX 
ADD DIL, -21 # instrumentation
CMOVO SI, AX 
DEC RCX 
AND RAX, 0b1111111111111 # instrumentation
ADD SIL, -101 # instrumentation
NOT byte ptr [R14 + RAX] 
LAHF  
SETNO CL 
MOVSX EBX, DL 
ADC AX, -24275 
MOV DL, DL 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
MOVSD  
INC BX 
SUB DIL, 122 
JB .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RAX], 0b1000000000000000000000000000000 # instrumentation
BSF EBX, dword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDX], 6 
SETP AL 
DEC SIL 
XCHG RBX, RBX 
CMOVNZ BX, AX 
SUB AL, 10 
ADD RAX, -1292786347 
AND RAX, 0b1111111111111 # instrumentation
AND byte ptr [R14 + RAX], -86 
IMUL AX 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RBX], EDX 
AND RBX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RBX], 93 
AND RBX, 0b1111111111111 # instrumentation
MOV DI, word ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RAX], 40 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RDI], BX 
TEST RCX, RDI 
JP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
XOR qword ptr [R14 + RDX], RBX 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RSI], -71 
CMOVS EBX, EBX 
ADC EAX, ECX 
OR EAX, 980452386 
AND RBX, 0b1111111111111 # instrumentation
SETO DIL 
AND RCX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RCX], -100 
XOR DL, -14 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
