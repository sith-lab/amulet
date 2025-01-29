.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
INC word ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RSI], EAX 
MOV DI, 22037 
AND RBX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RBX], 1 # instrumentation
AND DX, word ptr [R14 + RBX] # instrumentation
SHR DX, 1 # instrumentation
DIV word ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RAX], -55 
DEC RSI 
AND RCX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RCX], 54 
SUB DIL, 40 
JMP .bb_main.1 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RAX], 0b1000000000000000000000000000000 # instrumentation
BSR EDX, dword ptr [R14 + RAX] 
INC EDX 
IMUL ESI, ESI, 93 
SBB EAX, -1581750264 
SBB EAX, 108674640 
CMOVS RDI, RBX 
AND RCX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RCX], -123 
LOOPNE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
NEG qword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RDX], -67 
AND RBX, 0b1111111111111 # instrumentation
ADD EAX, dword ptr [R14 + RBX] 
CMOVS RSI, RAX 
JNS .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
MOV EBX, 228449316 
CDQ  
AND RDI, 0b1111111111111 # instrumentation
CMOVP EBX, dword ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
LOCK NEG byte ptr [R14 + RDX] 
JMP .bb_main.4 
.bb_main.4:
ADD SIL, 69 # instrumentation
ADC AL, DIL 
CMOVS RDX, RAX 
MOVZX SI, CL 
AND RCX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RCX], BX 
OR DX, 0b1000000000000000 # instrumentation
BSF CX, DX 
ADD EAX, -64681576 
CMOVNO SI, DI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
