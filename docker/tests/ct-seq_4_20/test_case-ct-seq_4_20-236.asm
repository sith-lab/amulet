.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
LEA EAX, qword ptr [RSI] 
AND RSI, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RSI], AX 
AND RBX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RBX], CL 
AND RDI, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RDI], CL 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RAX], -62 
JNP .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RCX], BX 
AND RBX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RBX], -10 
CMOVNZ RSI, RCX 
AND RDX, 0b1111111111111 # instrumentation
CMP DX, word ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVO AX, word ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RDI], RDX 
JMP .bb_main.2 
.bb_main.2:
MUL SIL 
AND RAX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RAX], 0b1000000000000000000000000000000 # instrumentation
BSF RDI, qword ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK INC byte ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNP AX, word ptr [R14 + RSI] 
JRCXZ .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RAX], ECX 
AND RSI, 0b1111111111111 # instrumentation
CMOVNO EBX, dword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RCX], -44 
AND RBX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RBX], 71 
AND RDI, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RDI], -67 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
