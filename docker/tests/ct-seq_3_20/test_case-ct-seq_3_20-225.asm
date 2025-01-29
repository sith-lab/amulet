.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
CMOVNS CX, word ptr [R14 + RSI] 
ADD RAX, -1808096271 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RSI], RAX 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RAX], -50 
MOVSX BX, BL 
AND RBX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RBX], 62 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
NEG qword ptr [R14 + RAX] 
CMOVNO SI, AX 
INC CL 
ADD AX, 8953 
AND RCX, 0b1111111111111 # instrumentation
CMOVL RDX, qword ptr [R14 + RCX] 
MOV DI, CX 
AND RAX, 0b1111111111111 # instrumentation
INC byte ptr [R14 + RAX] 
MOVZX RAX, DIL 
JP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
CMP RAX, RAX 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RDI], 8 
ADD RCX, RBX 
MOVSX RAX, SI 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RSI], CX 
AND RDX, 0b1111111111111 # instrumentation
CMOVLE EAX, dword ptr [R14 + RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
