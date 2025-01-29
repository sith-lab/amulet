.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, -98 # instrumentation
CBW  
LAHF  
OR CX, 0b1000000000000000 # instrumentation
BSR DX, CX 
AND RAX, 0b1111111111111 # instrumentation
LOCK DEC byte ptr [R14 + RAX] 
CMOVNO RSI, RCX 
CMP RCX, 104 
JMP .bb_main.1 
.bb_main.1:
OR DL, 1 # instrumentation
XCHG RDI, RSI 
DEC EBX 
ADC CL, CL 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RDI], RDX 
AND RDX, 0b1111111111111 # instrumentation
SUB AL, byte ptr [R14 + RDX] 
CMOVNB ECX, EBX 
JNZ .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
MOV RBX, RBX 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RCX], BL 
MOV BL, AL 
STC  
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RDI], EAX 
AND RCX, 0b1111111111111 # instrumentation
LOCK DEC qword ptr [R14 + RCX] 
MOVSX RAX, CL 
JP .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RDX], EDX 
JMP .bb_main.4 
.bb_main.4:
AND RDI, 0b1111111111111 # instrumentation
CMOVZ SI, word ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
MOVZX EDX, word ptr [R14 + RAX] 
CMOVBE RBX, RSI 
AND RBX, 0b1111111111111 # instrumentation
MOVSX EDX, word ptr [R14 + RBX] 
INC CL 
ADC RDX, RSI 
AND RDI, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RDI], AX 
JMP .bb_main.5 
.bb_main.5:
MUL DL 
AND RCX, 0b1111111111111 # instrumentation
LOCK DEC dword ptr [R14 + RCX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
