.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD AX, -7765 
CMOVNB RDI, RAX 
CMP CL, CL 
AND RDX, 0b1111111111111 # instrumentation
SUB DIL, byte ptr [R14 + RDX] 
JB .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
ADD CL, SIL 
AND RCX, 0b1111111111111 # instrumentation
CMOVZ RSI, qword ptr [R14 + RCX] 
SBB DI, CX 
AND RAX, 0b1111111111111 # instrumentation
CMOVNB RDX, qword ptr [R14 + RAX] 
OR ECX, 0b1000000000000000000000000000000 # instrumentation
BSF EDI, ECX 
ADD SIL, -62 # instrumentation
CMOVZ AX, DX 
CMOVS EBX, ECX 
AND RCX, 0b1111111111111 # instrumentation
CMP RDX, qword ptr [R14 + RCX] 
JRCXZ .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
ADD SIL, 127 # instrumentation
SBB AX, DX 
CMOVNB RCX, RDI 
AND RBX, 0b1111111111111 # instrumentation
DEC dword ptr [R14 + RBX] 
XCHG ESI, EAX 
XCHG DL, CL 
AND RDX, 0b1111111111111 # instrumentation
CMOVNO EBX, dword ptr [R14 + RDX] 
JMP .bb_main.3 
.bb_main.3:
AND RSI, 0b1111111111111 # instrumentation
SUB RSI, qword ptr [R14 + RSI] 
CMOVZ RSI, RDX 
AND RCX, 0b1111111111111 # instrumentation
LOCK INC dword ptr [R14 + RCX] 
XCHG AL, AL 
AND RAX, 0b1111111111111 # instrumentation
CMOVZ DI, word ptr [R14 + RAX] 
JS .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RSI, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RSI] 
OR CL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV CL 
AND RBX, 0b1111111111111 # instrumentation
ADD SI, word ptr [R14 + RBX] 
CMOVLE RSI, RCX 
XCHG EAX, EAX 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RCX], EDI 
AND RBX, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RBX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
