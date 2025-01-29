.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
INC word ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
SUB ESI, dword ptr [R14 + RBX] 
CMOVNO RSI, RDI 
MOVSX EBX, DI 
JNS .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RBX], CL 
AND RDX, 0b1111111111111 # instrumentation
SUB RBX, qword ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RBX], -111 
AND RDX, 0b1111111111111 # instrumentation
MOVZX EDX, word ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
MOV CX, word ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNZ ESI, dword ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RAX], AX 
CMP AX, -82 
AND RSI, 0b1111111111111 # instrumentation
SBB RDX, qword ptr [R14 + RSI] 
JMP .bb_main.2 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
CMOVZ RCX, qword ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
SBB CL, byte ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RBX], EDI 
SUB AX, SI 
JMP .bb_main.3 
.bb_main.3:
AND RAX, 0b1111111111111 # instrumentation
IMUL DI, word ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVB EDI, dword ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
