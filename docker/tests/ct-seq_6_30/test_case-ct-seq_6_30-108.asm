.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MOVSX DI, BL 
AND RDX, 0b1111111111111 # instrumentation
LOCK NEG byte ptr [R14 + RDX] 
IMUL DX 
AND RDI, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNZ RDI, qword ptr [R14 + RSI] 
JMP .bb_main.1 
.bb_main.1:
CMP AX, 17572 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RCX], DI 
CMOVNB RBX, RCX 
JNBE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
ADD BL, 60 
AND RSI, 0b1111111111111 # instrumentation
MOVSX ECX, word ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
NEG dword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RCX], -26 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RDX], CX 
IMUL EAX, EAX, -50 
JB .bb_main.3 
JMP .bb_main.5 
.bb_main.3:
AND RBX, 0b1111111111111 # instrumentation
SUB DL, byte ptr [R14 + RBX] 
CMOVNS RAX, RAX 
CMOVZ EAX, EDX 
MOVZX EDX, CL 
IMUL SIL 
JB .bb_main.4 
JMP .bb_main.5 
.bb_main.4:
AND RAX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RAX], CL 
AND RDI, 0b1111111111111 # instrumentation
MUL qword ptr [R14 + RDI] 
ADC EDI, 96 
MOVSX ESI, SI 
AND RCX, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RAX], DX 
AND RBX, 0b1111111111111 # instrumentation
LOCK NEG dword ptr [R14 + RBX] 
MOV BL, 97 
JMP .bb_main.5 
.bb_main.5:
AND RAX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RAX], 0b1000000000000000000000000000000 # instrumentation
BSF RDX, qword ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RAX], -32 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RAX], EBX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
