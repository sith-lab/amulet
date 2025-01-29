.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
DEC word ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RCX], ECX 
ADC EDX, -39 
DEC CL 
AND RSI, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RSI], EBX 
AND RAX, 0b1111111111111 # instrumentation
LOCK NEG byte ptr [R14 + RAX] 
CMOVNZ ECX, EBX 
CMOVS RBX, RAX 
JMP .bb_main.1 
.bb_main.1:
ADD DIL, -65 # instrumentation
CMOVNB EDI, ESI 
OR EAX, 1 # instrumentation
AND EDX, EAX # instrumentation
SHR EDX, 1 # instrumentation
DIV EAX 
AND RAX, 0b1111111111111 # instrumentation
CMP ESI, dword ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RAX], 11 
AND RBX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RBX], RAX 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RAX], -55 
AND RSI, 0b1111111111111 # instrumentation
CMOVNBE EDI, dword ptr [R14 + RSI] 
JMP .bb_main.2 
.bb_main.2:
ADD SIL, -110 # instrumentation
SBB AX, CX 
CMOVNBE RDI, RDI 
JNL .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RSI], CL 
CMOVO RCX, RSI 
AND RBX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RSI], -34 
JNS .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
ADD SIL, -87 # instrumentation
CMOVNL DI, AX 
MOV CX, CX 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RSI], -65 
CMOVNP SI, AX 
AND RAX, 0b1111111111111 # instrumentation
INC word ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
MUL qword ptr [R14 + RBX] 
CMP ECX, 75 
XCHG CL, CL 
AND RDX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RDX], DL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
