.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RAX], AL 
AND RDI, 0b1111111111111 # instrumentation
LOCK DEC byte ptr [R14 + RDI] 
MOV EDI, -1927103103 
AND RDX, 0b1111111111111 # instrumentation
MOVZX ECX, byte ptr [R14 + RDX] 
JRCXZ .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
SAHF  
IMUL EBX, ESI 
AND RAX, 0b1111111111111 # instrumentation
CMOVNL RBX, qword ptr [R14 + RAX] 
JMP .bb_main.2 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RBX], SI 
AND RBX, 0b1111111111111 # instrumentation
CMOVO EDI, dword ptr [R14 + RBX] 
OR CL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV CL 
AND RBX, 0b1111111111111 # instrumentation
CMOVNP DI, word ptr [R14 + RBX] 
LEA RDX, qword ptr [RDI + RCX] 
JMP .bb_main.3 
.bb_main.3:
ADD DIL, 88 # instrumentation
ADC BL, -67 
CMOVZ EDI, EAX 
MOVZX RBX, CL 
SUB DL, -60 
JMP .bb_main.4 
.bb_main.4:
MOV AL, AL 
AND RDX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RDX], AL 
CLC  
MOVSX EBX, BL 
ADC AX, 14298 
SUB BL, 5 
SUB DL, -7 
JMP .bb_main.5 
.bb_main.5:
AND RAX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RAX], -39 
AND RCX, 0b1111111111111 # instrumentation
LOCK NEG qword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RDI], EDI 
AND RBX, 0b1111111111111 # instrumentation
MOV SIL, byte ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVO ESI, dword ptr [R14 + RAX] 
NEG RAX 
SUB SIL, AL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
