.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RAX], BX 
ADD AL, -79 
CMP RSI, RSI 
AND RDX, 0b1111111111111 # instrumentation
MOVZX EDX, word ptr [R14 + RDX] 
CMOVB RSI, RBX 
IMUL RDX, RAX, 107 
AND RSI, 0b1111111111111 # instrumentation
CMOVS EDI, dword ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
IMUL word ptr [R14 + RBX] 
INC RAX 
AND RCX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RCX], BL 
CMP CL, 63 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RDX], DL 
JNB .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
IMUL RDX 
AND RSI, 0b1111111111111 # instrumentation
CMOVB DI, word ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RCX], 0b1000000000000000000000000000000 # instrumentation
BSF EAX, dword ptr [R14 + RCX] 
ADD DIL, 72 # instrumentation
CMOVZ BX, DX 
SBB DIL, -14 
AND RAX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RAX], 1 # instrumentation
AND DX, word ptr [R14 + RAX] # instrumentation
SHR DX, 1 # instrumentation
DIV word ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVP EDX, dword ptr [R14 + RBX] 
XCHG AL, DL 
AND RSI, 0b1111111111111 # instrumentation
CMOVO RDX, qword ptr [R14 + RSI] 
CMOVBE RDX, RAX 
AND RCX, 0b1111111111111 # instrumentation
CMOVO RSI, qword ptr [R14 + RCX] 
MUL RBX 
AND RDI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSR EDI, dword ptr [R14 + RDI] 
SUB RDI, -51 
ADC AL, DIL 
AND RSI, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RSI] 
CMP AX, CX 
SBB AL, CL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
