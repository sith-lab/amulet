.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RDI], AL 
AND RDX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RDX], 101 
SUB DIL, -97 
AND RBX, 0b1111111111111 # instrumentation
CMOVLE EBX, dword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVBE RBX, qword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RDI], BL 
JB .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
MOVZX EDX, DL 
AND RSI, 0b1111111111111 # instrumentation
ADD BL, byte ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RAX], -1393510210 
CMOVNO EDX, ESI 
JS .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RSI], SI 
AND RDI, 0b1111111111111 # instrumentation
LOCK DEC qword ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
IMUL word ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RDX], -51 
AND RAX, 0b1111111111111 # instrumentation
MOVZX EBX, word ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RSI], EBX 
CDQ  
JBE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RDI, 0b1111111111111 # instrumentation
CMOVNS RAX, qword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
INC byte ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
IMUL DI, word ptr [R14 + RCX], -118 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
