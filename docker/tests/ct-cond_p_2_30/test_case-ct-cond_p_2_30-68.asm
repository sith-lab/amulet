.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RSI], 37 
AND RCX, 0b1111111111111 # instrumentation
CMOVLE RCX, qword ptr [R14 + RCX] 
DEC CL 
CMOVO RAX, RDI 
AND RCX, 0b1111111111111 # instrumentation
INC word ptr [R14 + RCX] 
ADD SIL, 64 
ADD DI, -94 
CMP EAX, 218168650 
MUL CX 
AND RAX, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RAX] 
SUB AX, -30905 
XCHG EAX, EAX 
AND RDI, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RDI], 96 
AND RSI, 0b1111111111111 # instrumentation
CMOVNBE EDX, dword ptr [R14 + RSI] 
IMUL RBX 
JNB .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
CMOVNLE ESI, dword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RAX], DL 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RDX], RCX 
LEA RSI, qword ptr [RDI + RDX] 
AND RDI, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
CMOVBE ESI, dword ptr [R14 + RCX] 
CMOVNP RSI, RSI 
AND RSI, 0b1111111111111 # instrumentation
CMOVS EBX, dword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
IMUL ESI, dword ptr [R14 + RAX], -49 
OR EAX, 0b1000000000000000000000000000000 # instrumentation
BSF EBX, EAX 
AND RDX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDX], DL 
AND RSI, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RSI], SIL 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RAX], EAX 
MOV AX, SI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
