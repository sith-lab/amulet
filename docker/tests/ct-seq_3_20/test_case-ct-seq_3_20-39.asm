.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RDX], -3 
AND RDI, 0b1111111111111 # instrumentation
ADD AL, byte ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RDI], 82 
AND RDI, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RDI], DIL 
CMOVNZ RCX, RDX 
JS .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
IMUL AX, word ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RAX], -51 
AND RBX, 0b1111111111111 # instrumentation
LOCK DEC qword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RAX], BX 
AND RDX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDX], RAX 
SUB AL, 118 
JMP .bb_main.2 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RAX] 
SUB EAX, -677552442 
AND RCX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RCX], CL 
AND RBX, 0b1111111111111 # instrumentation
CMOVBE RDI, qword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
CMP BX, word ptr [R14 + RDI] 
MOVZX RAX, DL 
AND RDX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDX], 1 # instrumentation
AND RDI, 0b1111111111111 # instrumentation
SBB RDI, qword ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
CMOVLE EBX, dword ptr [R14 + RSI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
