.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
MOVZX EDX, byte ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNBE ESI, dword ptr [R14 + RSI] 
INC DL 
AND RDI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSF RDX, qword ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
MUL word ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK DEC dword ptr [R14 + RBX] 
JMP .bb_main.1 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RAX], SI 
AND RBX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RBX], EDI 
CMOVNLE RSI, RDX 
MOVZX RBX, AX 
XCHG EBX, EDI 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RAX], DIL 
AND RBX, 0b1111111111111 # instrumentation
CMOVO SI, word ptr [R14 + RBX] 
OR RCX, 0b1000000000000000000000000000000 # instrumentation
BSR RCX, RCX 
ADD SIL, 12 # instrumentation
JNL .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RBX], -21 
SUB AL, -18 
AND RCX, 0b1111111111111 # instrumentation
DEC word ptr [R14 + RCX] 
MUL DX 
AND RDX, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
SBB DIL, byte ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
INC dword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
CMOVS RCX, qword ptr [R14 + RDX] 
JMP .bb_main.3 
.bb_main.3:
AND RCX, 0b1111111111111 # instrumentation
CMOVZ EDI, dword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RDX], 8 
JMP .bb_main.4 
.bb_main.4:
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RBX], -96 
SUB AL, 10 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RAX], -85 
CMP CL, -41 
CMOVNBE RAX, RSI 
CLD  
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
