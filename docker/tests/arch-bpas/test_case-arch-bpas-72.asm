.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MOVZX DX, DL 
AND RDX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RDX], 86 
AND RDI, 0b1111111111111 # instrumentation
XOR EAX, dword ptr [R14 + RDI] 
OR AX, 2370 
AND RBX, 0b1111111111111 # instrumentation
IMUL qword ptr [R14 + RBX] 
ADD DIL, -83 # instrumentation
LOOPNE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
ADD BL, SIL 
AND RAX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RAX], -118 
XOR EDI, 34 
CMOVL RAX, RBX 
SUB CX, CX 
AND EAX, -1159645504 
SETL BL 
XOR RAX, 19 
AND RSI, 0b1111111111111 # instrumentation
CMOVBE CX, word ptr [R14 + RSI] 
TEST AL, 56 
OR EDI, 1 # instrumentation
AND EDX, EDI # instrumentation
SHR EDX, 1 # instrumentation
DIV EDI 
AND RAX, 0b1111111111111 # instrumentation
XOR RDI, qword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVZ SI, word ptr [R14 + RSI] 
CMOVP EDI, EAX 
AND RDI, 0b1111111111111 # instrumentation
CMOVLE EBX, dword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RBX], EDX 
JS .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
CLD  # instrumentation
OR AX, -15841 
ADD DIL, 94 
CMOVNL EDI, EDX 
SUB RAX, RBX 
AND RCX, 0b1111111111111 # instrumentation
XOR dword ptr [R14 + RCX], EDI 
AND RAX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RAX], RSI 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
SCASD  
AND RDX, 0b1111111111111 # instrumentation
AND CX, word ptr [R14 + RDX] 
ADD DIL, -111 # instrumentation
LAHF  
SETBE CL 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RAX], 96 
AND RSI, 0b1111111111111 # instrumentation
CMOVZ SI, word ptr [R14 + RSI] 
TEST RAX, 506134823 
MOVSX RBX, CL 
TEST CL, AL 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
LODSD  
SUB RAX, -1697204751 
SBB CL, CL 
TEST AX, 27263 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
