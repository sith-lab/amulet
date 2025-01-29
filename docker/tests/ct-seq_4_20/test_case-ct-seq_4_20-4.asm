.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RAX], 31 
AND RBX, 0b1111111111111 # instrumentation
DEC qword ptr [R14 + RBX] 
CMOVNZ AX, CX 
AND RSI, 0b1111111111111 # instrumentation
INC dword ptr [R14 + RSI] 
JLE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RCX], 115 
AND RSI, 0b1111111111111 # instrumentation
CMOVB DI, word ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RSI], -58 
AND RDI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDI], CL 
AND RDX, 0b1111111111111 # instrumentation
IMUL RSI, qword ptr [R14 + RDX], -33 
AND RDI, 0b1111111111111 # instrumentation
LOCK INC byte ptr [R14 + RDI] 
JNB .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
MOVZX ECX, byte ptr [R14 + RSI] 
CMP EBX, ESI 
AND RSI, 0b1111111111111 # instrumentation
DEC dword ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RBX], 39 
AND RDI, 0b1111111111111 # instrumentation
CMOVZ RCX, qword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
MOVZX RAX, byte ptr [R14 + RBX] 
LOOPE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
CBW  
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RAX], -100 
AND RSI, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RSI], RDI 
AND RBX, 0b1111111111111 # instrumentation
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
