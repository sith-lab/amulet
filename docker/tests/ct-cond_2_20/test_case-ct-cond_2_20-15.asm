.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RBX], CX 
AND RDX, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RDX], RDI 
AND RBX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RBX], RCX 
AND RAX, 0b1111111111111 # instrumentation
IMUL BX, word ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVZ EDI, dword ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RSI], RDX 
AND RCX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RCX], -122 
AND RBX, 0b1111111111111 # instrumentation
CMOVLE SI, word ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RAX], -82 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RSI], -90 
AND RCX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RCX], CX 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
MOVSX SI, AL 
AND RBX, 0b1111111111111 # instrumentation
MOVSX RAX, word ptr [R14 + RBX] 
CMOVNZ SI, CX 
AND RDX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDX], SIL 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RBX], -11 
AND RDX, 0b1111111111111 # instrumentation
CMOVL RCX, qword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
MOVZX EBX, word ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
SBB EAX, dword ptr [R14 + RAX] 
MOVSX RSI, DL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
