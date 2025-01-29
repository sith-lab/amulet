.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RSI], EBX 
AND RDI, 0b1111111111111 # instrumentation
MOVZX EAX, word ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RBX], -50 
AND RSI, 0b1111111111111 # instrumentation
CMOVNO EDI, dword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
ADD RAX, qword ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
SBB SI, word ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
ADD CL, byte ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RCX], 63 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RDI], BX 
JNS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RSI], 49 
MOV BL, BL 
AND RAX, 0b1111111111111 # instrumentation
IMUL RDI, qword ptr [R14 + RAX], 21 
AND RDI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDI], DI 
AND RAX, 0b1111111111111 # instrumentation
MOVZX RDI, byte ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RAX], -127 
MOV EDX, 318197569 
AND RSI, 0b1111111111111 # instrumentation
CMOVLE EDI, dword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RDI], -3 
AND RCX, 0b1111111111111 # instrumentation
CMOVNB EDX, dword ptr [R14 + RCX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
