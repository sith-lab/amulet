.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RDI], 114 
AND RCX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RCX], RAX 
CMOVZ RAX, RDX 
LOOPNE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RSI], -16 
AND RCX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RCX], EDI 
AND RBX, 0b1111111111111 # instrumentation
CMOVS BX, word ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVO EAX, dword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RSI], RDI 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RAX], SIL 
AND RDX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RDX], EBX 
AND RDX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RDX], CX 
JS .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
ADD SIL, -68 # instrumentation
CMOVB ESI, EBX 
AND RAX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RAX], DIL 
CMOVNP ECX, EDI 
AND RAX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RAX], 1 # instrumentation
AND RSI, 0b1111111111111 # instrumentation
MOVZX RAX, word ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RSI], RCX 
JBE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RSI, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RSI], -14 
MOVZX RSI, DIL 
ADD BL, CL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
