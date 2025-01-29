.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RSI], AL 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RDI], -115 
MOVSX RSI, DL 
JMP .bb_main.1 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
MOV EDX, dword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RBX], 1 # instrumentation
AND DX, word ptr [R14 + RBX] # instrumentation
SHR DX, 1 # instrumentation
DIV word ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDX], 1743262558 
IMUL AL 
ADD DIL, 124 # instrumentation
CMOVL ESI, ECX 
JMP .bb_main.2 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RCX], 0 
STD  
SBB EAX, -2085387274 
ADC RDI, 56 
AND RBX, 0b1111111111111 # instrumentation
SBB BX, word ptr [R14 + RBX] 
JNL .bb_main.3 
JMP .bb_main.5 
.bb_main.3:
ADD DIL, -19 # instrumentation
CMOVS RAX, RDX 
AND RDX, 0b1111111111111 # instrumentation
LOCK INC qword ptr [R14 + RDX] 
CMOVBE RAX, RDI 
AND RCX, 0b1111111111111 # instrumentation
INC dword ptr [R14 + RCX] 
SUB RAX, 1437375613 
MOVZX EBX, CX 
JMP .bb_main.4 
.bb_main.4:
AND RDX, 0b1111111111111 # instrumentation
ADC RBX, qword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
SUB DX, word ptr [R14 + RDX] 
MOVZX RDX, CL 
CMOVBE RDX, RDI 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RDX], -19 
AND RCX, 0b1111111111111 # instrumentation
MOVSX ESI, byte ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RBX], 0b1000000000000000000000000000000 # instrumentation
BSR RCX, qword ptr [R14 + RBX] 
ADD SIL, 54 # instrumentation
JNL .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
AND RDI, 0b1111111111111 # instrumentation
MOVZX RSI, word ptr [R14 + RDI] 
CMOVNZ RSI, RCX 
STD  
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
