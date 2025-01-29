.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RDX], -12 
AND RSI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RSI], RDX 
ADD DIL, -37 
AND RAX, 0b1111111111111 # instrumentation
CMOVP DI, word ptr [R14 + RAX] 
MOV EDX, 733398157 
AND RBX, 0b1111111111111 # instrumentation
LOCK INC dword ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RCX], -42 
JLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
CMOVLE EDI, dword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RDX], RBX 
AND RDX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RAX], DI 
AND RDX, 0b1111111111111 # instrumentation
INC byte ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK INC byte ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
MUL qword ptr [R14 + RDI] 
ADC EAX, ECX 
AND RDX, 0b1111111111111 # instrumentation
CMP EDI, dword ptr [R14 + RDX] 
MOVSX RAX, BL 
IMUL BX, DX, -121 
AND RDX, 0b1111111111111 # instrumentation
MOVZX RAX, byte ptr [R14 + RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
