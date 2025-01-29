.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
AND RAX, 0b1111111111111 # instrumentation
MOV ESI, dword ptr [R14 + RAX] 
IMUL ESI, EBX 
AND RSI, 0b1111111111111 # instrumentation
CMP RSI, qword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
MUL dword ptr [R14 + RAX] 
CDQ  
OR RAX, 1056474545 
SUB AL, BL 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
LODSD  
AND RAX, 0b1111111111111 # instrumentation
XADD qword ptr [R14 + RAX], RBX 
JS .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND DL, DL 
MOV DI, BX 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RAX], 88 
AND RAX, 0b1111111111111 # instrumentation
LOCK OR word ptr [R14 + RAX], -114 
AND RCX, 0b1111111111111 # instrumentation
CMOVL ECX, dword ptr [R14 + RCX] 
OR RSI, 117 
CMOVLE EAX, EDI 
ADC DL, -75 
IMUL DL 
CMPXCHG DIL, CL 
AND RDX, 0b1111111111111 # instrumentation
LOCK AND byte ptr [R14 + RDX], -121 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RBX], -1 
STC  
SETL DL 
AND RAX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RAX], 0b1000000000000000 # instrumentation
BSF CX, word ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
ADD SI, word ptr [R14 + RSI] 
JNP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
XADD EBX, EBX 
CWDE  
AND RBX, 0b1111111111111 # instrumentation
NOT byte ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
ADC ESI, dword ptr [R14 + RSI] 
CMP RCX, RAX 
TEST RSI, -767352126 
XOR AX, 9604 
AND RAX, 0b1111111111111 # instrumentation
AND byte ptr [R14 + RAX], CL 
AND RDX, 0b1111111111111 # instrumentation
SBB DL, byte ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
DEC dword ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RBX], ECX 
AND EAX, ECX 
AND RCX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RCX], -5 
AND RCX, 0b1111111111111 # instrumentation
CMOVNLE SI, word ptr [R14 + RCX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
