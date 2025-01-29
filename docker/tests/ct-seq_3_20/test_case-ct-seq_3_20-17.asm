.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
DEC EDX 
AND RDX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RDX], RDX 
AND RSI, 0b1111111111111 # instrumentation
MOV RDX, qword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RCX], EDX 
JNO .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
ADC EDI, dword ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RDX], CL 
AND RSI, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RSI] 
SUB RAX, -21 
AND RAX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVS RDI, qword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDI], BX 
AND RAX, 0b1111111111111 # instrumentation
ADD EAX, dword ptr [R14 + RAX] 
JNO .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RAX], SI 
AND RSI, 0b1111111111111 # instrumentation
IMUL DX, word ptr [R14 + RSI], 49 
AND RBX, 0b1111111111111 # instrumentation
CMOVO CX, word ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK DEC dword ptr [R14 + RBX] 
CMOVNS RSI, RSI 
CMP RAX, 1273224290 
AND RDX, 0b1111111111111 # instrumentation
CMOVZ RBX, qword ptr [R14 + RDX] 
MOVSX SI, DIL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
