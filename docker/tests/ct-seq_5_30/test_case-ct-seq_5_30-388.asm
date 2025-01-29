.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RCX], AL 
ADD AL, 102 
AND RSI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RSI], 1 # instrumentation
AND EDX, dword ptr [R14 + RSI] # instrumentation
SHR EDX, 1 # instrumentation
DIV dword ptr [R14 + RSI] 
SUB DX, -33 
JMP .bb_main.1 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RAX], BL 
IMUL AX 
AND RSI, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RSI], EBX 
AND RSI, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RSI], -38 
OR SI, 1 # instrumentation
AND DX, SI # instrumentation
SHR DX, 1 # instrumentation
DIV SI 
NEG RDI 
SUB EAX, EAX 
AND RCX, 0b1111111111111 # instrumentation
LOCK NEG qword ptr [R14 + RCX] 
JNLE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSR RCX, qword ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
IMUL word ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
DEC qword ptr [R14 + RBX] 
SBB RDX, 10 
JZ .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
MOV CL, 85 
AND RDX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDX], -17710 
STD  
CMOVNLE RBX, RSI 
AND RCX, 0b1111111111111 # instrumentation
ADD ECX, dword ptr [R14 + RCX] 
CMOVBE RDI, RDX 
AND RBX, 0b1111111111111 # instrumentation
CMOVNBE EAX, dword ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RCX] 
MOVSX DX, BL 
CMOVNB CX, BX 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RSI], RBX 
LOOP .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
ADD DIL, 31 # instrumentation
CMOVNL DI, DI 
AND RBX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RBX], 1848418966 
AND RDI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDI], EAX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
